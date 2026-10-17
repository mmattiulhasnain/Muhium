package com.example.vutoolkit;

import android.app.DownloadManager;
import android.content.ContentValues;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.provider.MediaStore;
import android.util.Base64;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.webkit.DownloadListener;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.Toast;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.example.vutoolkit.MainActivity;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000m\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007*\u0001\u001b\u0018\u00002\u00020\u0001:\u0001*B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0015J\u001a\u0010!\u001a\u00020\u001e2\b\u0010\"\u001a\u0004\u0018\u00010\u00052\u0006\u0010#\u001a\u00020$H\u0002J$\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020$2\b\u0010'\u001a\u0004\u0018\u00010$2\b\u0010(\u001a\u0004\u0018\u00010$H\u0002J\b\u0010)\u001a\u00020\u001eH\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n\u0000R\u0016\u0010\f\u001a\n \u000e*\u0004\u0018\u00010\r0\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u000f\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u0011\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\u0010\u0012\f\u0012\n \u000e*\u0004\u0018\u00010\u00150\u00150\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u001c¨\u0006+"}, d2 = {"Lcom/example/vutoolkit/MainActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "webView", "Landroid/webkit/WebView;", "swipeRefreshLayout", "Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;", "loadingLayout", "Landroid/widget/FrameLayout;", "loadingProgressBar", "Landroid/widget/ProgressBar;", "ioExecutor", "Ljava/util/concurrent/ExecutorService;", "kotlin.jvm.PlatformType", "filePathCallback", "Landroid/webkit/ValueCallback;", "", "Landroid/net/Uri;", "fileChooserLauncher", "Landroidx/activity/result/ActivityResultLauncher;", "Landroid/content/Intent;", "dotsHandler", "Landroid/os/Handler;", "dotStep", "", "animateDotsRunnable", "com/example/vutoolkit/MainActivity$animateDotsRunnable$1", "Lcom/example/vutoolkit/MainActivity$animateDotsRunnable$1;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "injectScript", "view", "assetFileName", "", "resolveFileName", "url", "contentDisposition", "mimeType", "onDestroy", "AndroidPdfBridge", "app"}, k = 1, mv = {2, 2, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class MainActivity extends AppCompatActivity {
    private final MainActivity$animateDotsRunnable$1 animateDotsRunnable;
    private int dotStep;
    private final Handler dotsHandler;
    private final ActivityResultLauncher<Intent> fileChooserLauncher;
    private ValueCallback<Uri[]> filePathCallback;
    private final ExecutorService ioExecutor = Executors.newSingleThreadExecutor();
    private FrameLayout loadingLayout;
    private ProgressBar loadingProgressBar;
    private SwipeRefreshLayout swipeRefreshLayout;
    private WebView webView;

    /* JADX WARN: Type inference failed for: r0v5, types: [com.example.vutoolkit.MainActivity$animateDotsRunnable$1] */
    public MainActivity() {
        ActivityResultLauncher<Intent> activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: com.example.vutoolkit.MainActivity$$ExternalSyntheticLambda0
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                MainActivity.fileChooserLauncher$lambda$0(this.f$0, (ActivityResult) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(activityResultLauncherRegisterForActivityResult, "registerForActivityResult(...)");
        this.fileChooserLauncher = activityResultLauncherRegisterForActivityResult;
        this.dotsHandler = new Handler(Looper.getMainLooper());
        this.animateDotsRunnable = new Runnable() { // from class: com.example.vutoolkit.MainActivity$animateDotsRunnable$1
            @Override // java.lang.Runnable
            public void run() {
                View dot1 = this.this$0.findViewById(R.id.dot1);
                View dot2 = this.this$0.findViewById(R.id.dot2);
                View dot3 = this.this$0.findViewById(R.id.dot3);
                if (dot1 != null && dot2 != null && dot3 != null) {
                    char c = 3;
                    boolean z = true;
                    Iterable dots = CollectionsKt.listOf((Object[]) new View[]{dot1, dot2, dot3});
                    Iterable iterable = dots;
                    MainActivity mainActivity = this.this$0;
                    int i = 0;
                    for (Object obj : iterable) {
                        int i2 = i + 1;
                        if (i < 0) {
                            CollectionsKt.throwIndexOverflow();
                        }
                        View view = (View) obj;
                        char c2 = c;
                        boolean z2 = z;
                        Iterable iterable2 = iterable;
                        if (i == mainActivity.dotStep % 3) {
                            view.animate().scaleX(1.4f).scaleY(1.4f).alpha(1.0f).setDuration(250L).start();
                        } else {
                            view.animate().scaleX(0.8f).scaleY(0.8f).alpha(0.3f).setDuration(250L).start();
                        }
                        i = i2;
                        z = z2;
                        c = c2;
                        iterable = iterable2;
                    }
                    this.this$0.dotStep++;
                    this.this$0.dotsHandler.postDelayed(this, 350L);
                }
            }
        };
    }

    static final void fileChooserLauncher$lambda$0(MainActivity this$0, ActivityResult result) {
        if (this$0.filePathCallback != null) {
            Uri[] results = WebChromeClient.FileChooserParams.parseResult(result.getResultCode(), result.getData());
            ValueCallback<Uri[]> valueCallback = this$0.filePathCallback;
            if (valueCallback != null) {
                valueCallback.onReceiveValue(results);
            }
            this$0.filePathCallback = null;
        }
    }

    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0007J\u0018\u0010\t\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0007¨\u0006\n"}, d2 = {"Lcom/example/vutoolkit/MainActivity$AndroidPdfBridge;", "", "<init>", "(Lcom/example/vutoolkit/MainActivity;)V", "saveBase64Pdf", "", "base64Data", "", "fileName", "saveBase64File", "app"}, k = 1, mv = {2, 2, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public final class AndroidPdfBridge {
        public AndroidPdfBridge() {
        }

        @JavascriptInterface
        public final void saveBase64Pdf(String base64Data, String fileName) {
            Intrinsics.checkNotNullParameter(base64Data, "base64Data");
            Intrinsics.checkNotNullParameter(fileName, "fileName");
            saveBase64File(base64Data, fileName);
        }

        @JavascriptInterface
        public final void saveBase64File(final String base64Data, final String fileName) {
            Intrinsics.checkNotNullParameter(base64Data, "base64Data");
            Intrinsics.checkNotNullParameter(fileName, "fileName");
            ExecutorService executorService = MainActivity.this.ioExecutor;
            final MainActivity mainActivity = MainActivity.this;
            executorService.execute(new Runnable() { // from class: com.example.vutoolkit.MainActivity$AndroidPdfBridge$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.AndroidPdfBridge.saveBase64File$lambda$8(base64Data, fileName, mainActivity);
                }
            });
        }

        static final void saveBase64File$lambda$8(String $base64Data, String $fileName, final MainActivity this$0) {
            String cleanBase64;
            FileOutputStream fileOutputStream;
            try {
                final Uri uri = null;
                if (StringsKt.contains$default((CharSequence) $base64Data, (CharSequence) ",", false, 2, (Object) null)) {
                    cleanBase64 = StringsKt.substringAfter$default($base64Data, ",", (String) null, 2, (Object) null);
                } else {
                    cleanBase64 = $base64Data;
                }
                byte[] pdfBytes = Base64.decode(cleanBase64, 0);
                String safeFileName = StringsKt.endsWith($fileName, ".pdf", true) ? $fileName : $fileName + ".pdf";
                if (Build.VERSION.SDK_INT >= 29) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("_display_name", safeFileName);
                    contentValues.put("mime_type", "application/pdf");
                    contentValues.put("relative_path", Environment.DIRECTORY_DOWNLOADS);
                    Uri uriInsert = this$0.getContentResolver().insert(MediaStore.Downloads.EXTERNAL_CONTENT_URI, contentValues);
                    if (uriInsert != null) {
                        OutputStream outputStreamOpenOutputStream = this$0.getContentResolver().openOutputStream(uriInsert);
                        if (outputStreamOpenOutputStream != null) {
                            fileOutputStream = outputStreamOpenOutputStream;
                            try {
                                fileOutputStream.write(pdfBytes);
                                Unit unit = Unit.INSTANCE;
                                CloseableKt.closeFinally(fileOutputStream, null);
                            } finally {
                            }
                        }
                        uri = uriInsert;
                    }
                } else {
                    File downloadsDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
                    File file = new File(downloadsDir, safeFileName);
                    fileOutputStream = new FileOutputStream(file);
                    try {
                        fileOutputStream.write(pdfBytes);
                        Unit unit2 = Unit.INSTANCE;
                        CloseableKt.closeFinally(fileOutputStream, null);
                        try {
                            if (file.exists()) {
                                Object systemService = this$0.getSystemService("download");
                                Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.DownloadManager");
                                DownloadManager downloadManager = (DownloadManager) systemService;
                                downloadManager.addCompletedDownload(safeFileName, "VU Toolkit PDF Export", true, "application/pdf", file.getAbsolutePath(), file.length(), true);
                            }
                        } catch (Exception e) {
                        }
                        uri = Uri.fromFile(file);
                    } finally {
                    }
                }
                this$0.runOnUiThread(new Runnable() { // from class: com.example.vutoolkit.MainActivity$AndroidPdfBridge$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainActivity.AndroidPdfBridge.saveBase64File$lambda$8$lambda$6(this$0, uri);
                    }
                });
            } catch (Exception e2) {
                this$0.runOnUiThread(new Runnable() { // from class: com.example.vutoolkit.MainActivity$AndroidPdfBridge$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        Toast.makeText(this$0, "PDF Save Error: " + e2.getMessage(), 0).show();
                    }
                });
            }
        }

        static final void saveBase64File$lambda$8$lambda$6(MainActivity this$0, Uri $uri) {
            Toast.makeText(this$0, "PDF saved to Downloads folder!", 1).show();
            if ($uri != null) {
                try {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setDataAndType($uri, "application/pdf");
                    intent.addFlags(1);
                    this$0.startActivity(Intent.createChooser(intent, "Open PDF"));
                } catch (Exception e) {
                }
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        View viewFindViewById = findViewById(R.id.webView);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(...)");
        this.webView = (WebView) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.swipeRefreshLayout);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById2, "findViewById(...)");
        this.swipeRefreshLayout = (SwipeRefreshLayout) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.loadingLayout);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById3, "findViewById(...)");
        this.loadingLayout = (FrameLayout) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.progressBar);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById4, "findViewById(...)");
        this.loadingProgressBar = (ProgressBar) viewFindViewById4;
        this.dotsHandler.post(this.animateDotsRunnable);
        AndroidPdfBridge pdfBridge = new AndroidPdfBridge();
        WebView webView = this.webView;
        WebView webView2 = null;
        if (webView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webView");
            webView = null;
        }
        webView.addJavascriptInterface(pdfBridge, "AndroidPdfBridge");
        WebView webView3 = this.webView;
        if (webView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webView");
            webView3 = null;
        }
        webView3.addJavascriptInterface(pdfBridge, "AndroidPDF");
        WebView webView4 = this.webView;
        if (webView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webView");
            webView4 = null;
        }
        WebSettings settings = webView4.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setAllowFileAccess(true);
        settings.setMixedContentMode(0);
        WebView webView5 = this.webView;
        if (webView5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webView");
            webView5 = null;
        }
        webView5.setWebChromeClient(new WebChromeClient() { // from class: com.example.vutoolkit.MainActivity.onCreate.2
            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView view, int newProgress) {
                super.onProgressChanged(view, newProgress);
                MainActivity mainActivity = MainActivity.this;
                ProgressBar progressBar = null;
                if (newProgress < 100) {
                    ProgressBar progressBar2 = mainActivity.loadingProgressBar;
                    if (progressBar2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("loadingProgressBar");
                        progressBar2 = null;
                    }
                    progressBar2.setVisibility(0);
                    ProgressBar progressBar3 = MainActivity.this.loadingProgressBar;
                    if (progressBar3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("loadingProgressBar");
                    } else {
                        progressBar = progressBar3;
                    }
                    progressBar.setProgress(newProgress);
                    return;
                }
                ProgressBar progressBar4 = mainActivity.loadingProgressBar;
                if (progressBar4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("loadingProgressBar");
                } else {
                    progressBar = progressBar4;
                }
                progressBar.setVisibility(8);
            }

            @Override // android.webkit.WebChromeClient
            public boolean onShowFileChooser(WebView webView6, ValueCallback<Uri[]> filePathCallback, WebChromeClient.FileChooserParams fileChooserParams) {
                Intent intent;
                ValueCallback valueCallback = MainActivity.this.filePathCallback;
                if (valueCallback != null) {
                    valueCallback.onReceiveValue(null);
                }
                MainActivity.this.filePathCallback = filePathCallback;
                if (fileChooserParams == null || (intent = fileChooserParams.createIntent()) == null) {
                    intent = new Intent("android.intent.action.GET_CONTENT");
                    intent.setType("*/*");
                    intent.addCategory("android.intent.category.OPENABLE");
                }
                try {
                    MainActivity.this.fileChooserLauncher.launch(intent);
                    return true;
                } catch (Exception e) {
                    MainActivity.this.filePathCallback = null;
                    Toast.makeText(MainActivity.this, "Cannot open file chooser", 0).show();
                    return false;
                }
            }
        });
        WebView webView6 = this.webView;
        if (webView6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webView");
            webView6 = null;
        }
        webView6.setDownloadListener(new DownloadListener() { // from class: com.example.vutoolkit.MainActivity$$ExternalSyntheticLambda1
            @Override // android.webkit.DownloadListener
            public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
                MainActivity.onCreate$lambda$4(this.f$0, str, str2, str3, str4, j);
            }
        });
        WebView webView7 = this.webView;
        if (webView7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webView");
            webView7 = null;
        }
        webView7.setWebViewClient(new AnonymousClass4());
        SwipeRefreshLayout swipeRefreshLayout = this.swipeRefreshLayout;
        if (swipeRefreshLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("swipeRefreshLayout");
            swipeRefreshLayout = null;
        }
        swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.example.vutoolkit.MainActivity$$ExternalSyntheticLambda2
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                MainActivity.onCreate$lambda$5(this.f$0);
            }
        });
        SwipeRefreshLayout swipeRefreshLayout2 = this.swipeRefreshLayout;
        if (swipeRefreshLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("swipeRefreshLayout");
            swipeRefreshLayout2 = null;
        }
        swipeRefreshLayout2.setOnChildScrollUpCallback(new SwipeRefreshLayout.OnChildScrollUpCallback() { // from class: com.example.vutoolkit.MainActivity$$ExternalSyntheticLambda3
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnChildScrollUpCallback
            public final boolean canChildScrollUp(SwipeRefreshLayout swipeRefreshLayout3, View view) {
                return MainActivity.onCreate$lambda$6(this.f$0, swipeRefreshLayout3, view);
            }
        });
        getOnBackPressedDispatcher().addCallback(this, new OnBackPressedCallback() { // from class: com.example.vutoolkit.MainActivity.onCreate.7
            {
                super(true);
            }

            @Override // androidx.activity.OnBackPressedCallback
            public void handleOnBackPressed() {
                WebView webView8 = MainActivity.this.webView;
                WebView webView9 = null;
                if (webView8 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("webView");
                    webView8 = null;
                }
                if (webView8.canGoBack()) {
                    WebView webView10 = MainActivity.this.webView;
                    if (webView10 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("webView");
                    } else {
                        webView9 = webView10;
                    }
                    webView9.goBack();
                    return;
                }
                setEnabled(false);
                MainActivity.this.getOnBackPressedDispatcher().onBackPressed();
            }
        });
        WebView webView8 = this.webView;
        if (webView8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webView");
        } else {
            webView2 = webView8;
        }
        webView2.loadUrl("https://vulms.vu.edu.pk");
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0119 A[Catch: Exception -> 0x0179, TryCatch #0 {Exception -> 0x0179, blocks: (B:20:0x00b0, B:22:0x00b9, B:28:0x00c5, B:41:0x00fc, B:43:0x010d, B:49:0x0119, B:50:0x011c, B:31:0x00ce, B:36:0x00e4), top: B:55:0x00b0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static final void onCreate$lambda$4(com.example.vutoolkit.MainActivity r8, java.lang.String r9, java.lang.String r10, java.lang.String r11, java.lang.String r12, long r13) {
        /*
            Method dump skipped, instruction units count: 416
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.example.vutoolkit.MainActivity.onCreate$lambda$4(com.example.vutoolkit.MainActivity, java.lang.String, java.lang.String, java.lang.String, java.lang.String, long):void");
    }

    /* JADX INFO: renamed from: com.example.vutoolkit.MainActivity$onCreate$4, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u00003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J&\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0017J&\u0010\n\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u001c\u0010\u000f\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016¨\u0006\u0010"}, d2 = {"com/example/vutoolkit/MainActivity$onCreate$4", "Landroid/webkit/WebViewClient;", "onReceivedSslError", "", "view", "Landroid/webkit/WebView;", "handler", "Landroid/webkit/SslErrorHandler;", "error", "Landroid/net/http/SslError;", "onPageStarted", "url", "", "favicon", "Landroid/graphics/Bitmap;", "onPageFinished", "app"}, k = 1, mv = {2, 2, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class AnonymousClass4 extends WebViewClient {
        AnonymousClass4() {
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
            if (handler != null) {
                handler.proceed();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView view, String url, Bitmap favicon) {
            super.onPageStarted(view, url, favicon);
            MainActivity.this.injectScript(view, "theme_enhancer.js");
            MainActivity.this.injectScript(view, "dark_mode.js");
            MainActivity.this.injectScript(view, "lecture_bypass.js");
            MainActivity.this.injectScript(view, "custom_loader.js");
            MainActivity.this.injectScript(view, "password_manager.js");
            MainActivity.this.injectScript(view, "activity_calendar.js");
            MainActivity.this.injectScript(view, "copypaste_enabler.js");
            MainActivity.this.injectScript(view, "gdb_question_copier.js");
            MainActivity.this.injectScript(view, "attendance_check.js");
            MainActivity.this.injectScript(view, "grading_scheme_extractor.js");
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView view, String url) {
            super.onPageFinished(view, url);
            SwipeRefreshLayout swipeRefreshLayout = MainActivity.this.swipeRefreshLayout;
            FrameLayout frameLayout = null;
            if (swipeRefreshLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("swipeRefreshLayout");
                swipeRefreshLayout = null;
            }
            swipeRefreshLayout.setRefreshing(false);
            MainActivity.this.injectScript(view, "theme_enhancer.js");
            MainActivity.this.injectScript(view, "dark_mode.js");
            MainActivity.this.injectScript(view, "lecture_bypass.js");
            MainActivity.this.injectScript(view, "custom_loader.js");
            MainActivity.this.injectScript(view, "password_manager.js");
            MainActivity.this.injectScript(view, "activity_calendar.js");
            MainActivity.this.injectScript(view, "copypaste_enabler.js");
            MainActivity.this.injectScript(view, "gdb_question_copier.js");
            MainActivity.this.injectScript(view, "attendance_check.js");
            MainActivity.this.injectScript(view, "grading_scheme_extractor.js");
            View view2 = MainActivity.this.loadingLayout;
            if (view2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("loadingLayout");
                view2 = null;
            }
            if (view2.getVisibility() == 0) {
                FrameLayout frameLayout2 = MainActivity.this.loadingLayout;
                if (frameLayout2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("loadingLayout");
                } else {
                    frameLayout = frameLayout2;
                }
                ViewPropertyAnimator duration = frameLayout.animate().alpha(0.0f).setDuration(400L);
                final MainActivity mainActivity = MainActivity.this;
                duration.withEndAction(new Runnable() { // from class: com.example.vutoolkit.MainActivity$onCreate$4$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainActivity.AnonymousClass4.onPageFinished$lambda$0(mainActivity);
                    }
                });
            }
        }

        static final void onPageFinished$lambda$0(MainActivity this$0) {
            FrameLayout frameLayout = this$0.loadingLayout;
            if (frameLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("loadingLayout");
                frameLayout = null;
            }
            frameLayout.setVisibility(8);
            this$0.dotsHandler.removeCallbacks(this$0.animateDotsRunnable);
        }
    }

    static final void onCreate$lambda$5(MainActivity this$0) {
        WebView webView = this$0.webView;
        if (webView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webView");
            webView = null;
        }
        webView.reload();
    }

    static final boolean onCreate$lambda$6(MainActivity this$0, SwipeRefreshLayout swipeRefreshLayout, View view) {
        Intrinsics.checkNotNullParameter(swipeRefreshLayout, "<unused var>");
        WebView webView = this$0.webView;
        if (webView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webView");
            webView = null;
        }
        return webView.canScrollVertically(-1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void injectScript(WebView view, String assetFileName) {
        try {
            InputStream inputStreamOpen = getAssets().open(assetFileName);
            Intrinsics.checkNotNullExpressionValue(inputStreamOpen, "open(...)");
            Reader inputStreamReader = new InputStreamReader(inputStreamOpen, Charsets.UTF_8);
            BufferedReader bufferedReader = inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
            try {
                String script = TextStreamsKt.readText(bufferedReader);
                CloseableKt.closeFinally(bufferedReader, null);
                if (!(script.length() > 0) || view == null) {
                    return;
                }
                view.evaluateJavascript(script, null);
            } finally {
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00bd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.lang.String resolveFileName(java.lang.String r18, java.lang.String r19, java.lang.String r20) throws java.io.UnsupportedEncodingException {
        /*
            Method dump skipped, instruction units count: 337
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.example.vutoolkit.MainActivity.resolveFileName(java.lang.String, java.lang.String, java.lang.String):java.lang.String");
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.dotsHandler.removeCallbacks(this.animateDotsRunnable);
        this.ioExecutor.shutdown();
    }
}
