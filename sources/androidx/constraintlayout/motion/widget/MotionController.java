package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.graphics.RectF;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.utils.CurveFit;
import androidx.constraintlayout.motion.utils.Easing;
import androidx.constraintlayout.motion.utils.VelocityMatrix;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class MotionController {
    private static final boolean DEBUG = false;
    public static final int DRAW_PATH_AS_CONFIGURED = 4;
    public static final int DRAW_PATH_BASIC = 1;
    public static final int DRAW_PATH_CARTESIAN = 3;
    public static final int DRAW_PATH_NONE = 0;
    public static final int DRAW_PATH_RECTANGLE = 5;
    public static final int DRAW_PATH_RELATIVE = 2;
    public static final int DRAW_PATH_SCREEN = 6;
    private static final boolean FAVOR_FIXED_SIZE_VIEWS = false;
    public static final int HORIZONTAL_PATH_X = 2;
    public static final int HORIZONTAL_PATH_Y = 3;
    public static final int PATH_PERCENT = 0;
    public static final int PATH_PERPENDICULAR = 1;
    private static final String TAG = "MotionController";
    public static final int VERTICAL_PATH_X = 4;
    public static final int VERTICAL_PATH_Y = 5;
    String[] attributeTable;
    private CurveFit mArcSpline;
    private int[] mAttributeInterpCount;
    private String[] mAttributeNames;
    private HashMap<String, SplineSet> mAttributesMap;
    String mConstraintTag;
    private HashMap<String, KeyCycleOscillator> mCycleMap;
    int mId;
    private double[] mInterpolateData;
    private int[] mInterpolateVariables;
    private double[] mInterpolateVelocity;
    private KeyTrigger[] mKeyTriggers;
    private CurveFit[] mSpline;
    private HashMap<String, TimeCycleSplineSet> mTimeCycleAttributesMap;
    View mView;
    private int mCurveFitType = -1;
    private MotionPaths mStartMotionPath = new MotionPaths();
    private MotionPaths mEndMotionPath = new MotionPaths();
    private MotionConstrainedPoint mStartPoint = new MotionConstrainedPoint();
    private MotionConstrainedPoint mEndPoint = new MotionConstrainedPoint();
    float mMotionStagger = Float.NaN;
    float mStaggerOffset = 0.0f;
    float mStaggerScale = 1.0f;
    private int MAX_DIMENSION = 4;
    private float[] mValuesBuff = new float[this.MAX_DIMENSION];
    private ArrayList<MotionPaths> mMotionPaths = new ArrayList<>();
    private float[] mVelocity = new float[1];
    private ArrayList<Key> mKeyList = new ArrayList<>();
    private int mPathMotionArc = Key.UNSET;

    MotionPaths getKeyFrame(int i) {
        return this.mMotionPaths.get(i);
    }

    MotionController(View view) {
        setView(view);
    }

    float getStartX() {
        return this.mStartMotionPath.x;
    }

    float getStartY() {
        return this.mStartMotionPath.y;
    }

    float getFinalX() {
        return this.mEndMotionPath.x;
    }

    float getFinalY() {
        return this.mEndMotionPath.y;
    }

    void buildPath(float[] points, int pointCount) {
        MotionController motionController = this;
        int i = pointCount;
        float f = 1.0f;
        float mils = 1.0f / (i - 1);
        SplineSet trans_x = motionController.mAttributesMap == null ? null : motionController.mAttributesMap.get("translationX");
        SplineSet trans_y = motionController.mAttributesMap == null ? null : motionController.mAttributesMap.get("translationY");
        KeyCycleOscillator osc_x = motionController.mCycleMap == null ? null : motionController.mCycleMap.get("translationX");
        KeyCycleOscillator osc_y = motionController.mCycleMap != null ? motionController.mCycleMap.get("translationY") : null;
        int i2 = 0;
        while (i2 < i) {
            float position = i2 * mils;
            if (motionController.mStaggerScale != f) {
                if (position < motionController.mStaggerOffset) {
                    position = 0.0f;
                }
                if (position > motionController.mStaggerOffset && position < 1.0d) {
                    position = (position - motionController.mStaggerOffset) * motionController.mStaggerScale;
                }
            }
            double p = position;
            Easing easing = motionController.mStartMotionPath.mKeyFrameEasing;
            float start = 0.0f;
            float end = Float.NaN;
            for (MotionPaths frame : motionController.mMotionPaths) {
                float mils2 = mils;
                if (frame.mKeyFrameEasing != null) {
                    if (frame.time < position) {
                        Easing easing2 = frame.mKeyFrameEasing;
                        start = frame.time;
                        easing = easing2;
                    } else if (Float.isNaN(end)) {
                        end = frame.time;
                    }
                }
                mils = mils2;
            }
            float mils3 = mils;
            if (easing != null) {
                if (Float.isNaN(end)) {
                    end = 1.0f;
                }
                float offset = (position - start) / (end - start);
                p = ((end - start) * ((float) easing.get(offset))) + start;
            }
            motionController.mSpline[0].getPos(p, motionController.mInterpolateData);
            if (motionController.mArcSpline != null && motionController.mInterpolateData.length > 0) {
                motionController.mArcSpline.getPos(p, motionController.mInterpolateData);
            }
            motionController.mStartMotionPath.getCenter(motionController.mInterpolateVariables, motionController.mInterpolateData, points, i2 * 2);
            if (osc_x != null) {
                int i3 = i2 * 2;
                points[i3] = points[i3] + osc_x.get(position);
            } else if (trans_x != null) {
                int i4 = i2 * 2;
                points[i4] = points[i4] + trans_x.get(position);
            }
            if (osc_y != null) {
                int i5 = (i2 * 2) + 1;
                points[i5] = points[i5] + osc_y.get(position);
            } else if (trans_y != null) {
                int i6 = (i2 * 2) + 1;
                points[i6] = points[i6] + trans_y.get(position);
            }
            i2++;
            motionController = this;
            i = pointCount;
            mils = mils3;
            f = 1.0f;
        }
    }

    void buildBounds(float[] bounds, int pointCount) {
        float mils;
        MotionController motionController = this;
        int i = pointCount;
        float f = 1.0f;
        float mils2 = 1.0f / (i - 1);
        SplineSet trans_x = motionController.mAttributesMap == null ? null : motionController.mAttributesMap.get("translationX");
        if (motionController.mAttributesMap != null) {
            motionController.mAttributesMap.get("translationY");
        }
        if (motionController.mCycleMap != null) {
            motionController.mCycleMap.get("translationX");
        }
        if (motionController.mCycleMap != null) {
            motionController.mCycleMap.get("translationY");
        }
        int i2 = 0;
        while (i2 < i) {
            float position = i2 * mils2;
            if (motionController.mStaggerScale != f) {
                if (position < motionController.mStaggerOffset) {
                    position = 0.0f;
                }
                if (position > motionController.mStaggerOffset && position < 1.0d) {
                    position = (position - motionController.mStaggerOffset) * motionController.mStaggerScale;
                }
            }
            double p = position;
            Easing easing = motionController.mStartMotionPath.mKeyFrameEasing;
            float start = 0.0f;
            float end = Float.NaN;
            for (MotionPaths frame : motionController.mMotionPaths) {
                if (frame.mKeyFrameEasing != null) {
                    if (frame.time < position) {
                        Easing easing2 = frame.mKeyFrameEasing;
                        start = frame.time;
                        easing = easing2;
                    } else if (Float.isNaN(end)) {
                        end = frame.time;
                    }
                }
            }
            if (easing == null) {
                mils = mils2;
            } else {
                if (Float.isNaN(end)) {
                    end = 1.0f;
                }
                float offset = (position - start) / (end - start);
                mils = mils2;
                p = ((end - start) * ((float) easing.get(offset))) + start;
            }
            motionController.mSpline[0].getPos(p, motionController.mInterpolateData);
            if (motionController.mArcSpline != null && motionController.mInterpolateData.length > 0) {
                motionController.mArcSpline.getPos(p, motionController.mInterpolateData);
            }
            motionController.mStartMotionPath.getBounds(motionController.mInterpolateVariables, motionController.mInterpolateData, bounds, i2 * 2);
            i2++;
            motionController = this;
            i = pointCount;
            mils2 = mils;
            trans_x = trans_x;
            f = 1.0f;
        }
    }

    private float getPreCycleDistance() {
        float mils;
        char c;
        float[] points;
        char c2;
        int pointCount = 100;
        float[] points2 = new float[2];
        float sum = 0.0f;
        float mils2 = 1.0f / (100 - 1);
        double x = 0.0d;
        double y = 0.0d;
        int i = 0;
        while (i < pointCount) {
            float position = i * mils2;
            double p = position;
            Easing easing = this.mStartMotionPath.mKeyFrameEasing;
            float start = 0.0f;
            float end = Float.NaN;
            int pointCount2 = pointCount;
            Iterator<MotionPaths> it = this.mMotionPaths.iterator();
            while (it.hasNext()) {
                Iterator<MotionPaths> it2 = it;
                MotionPaths frame = it.next();
                int i2 = i;
                if (frame.mKeyFrameEasing != null) {
                    if (frame.time < position) {
                        Easing easing2 = frame.mKeyFrameEasing;
                        start = frame.time;
                        easing = easing2;
                    } else if (Float.isNaN(end)) {
                        end = frame.time;
                    }
                }
                i = i2;
                it = it2;
            }
            int i3 = i;
            if (easing == null) {
                mils = mils2;
            } else {
                if (Float.isNaN(end)) {
                    end = 1.0f;
                }
                float offset = (position - start) / (end - start);
                mils = mils2;
                p = ((end - start) * ((float) easing.get(offset))) + start;
            }
            this.mSpline[0].getPos(p, this.mInterpolateData);
            double x2 = x;
            this.mStartMotionPath.getCenter(this.mInterpolateVariables, this.mInterpolateData, points2, 0);
            if (i3 > 0) {
                c = 1;
                points = points2;
                c2 = 0;
                sum = (float) (((double) sum) + Math.hypot(y - ((double) points2[1]), x2 - ((double) points[0])));
            } else {
                c = 1;
                points = points2;
                c2 = 0;
            }
            x = points[c2];
            y = points[c];
            i = i3 + 1;
            pointCount = pointCount2;
            mils2 = mils;
            points2 = points;
        }
        return sum;
    }

    KeyPositionBase getPositionKeyframe(int layoutWidth, int layoutHeight, float x, float y) {
        int layoutWidth2;
        int layoutHeight2;
        float x2;
        float y2;
        RectF start = new RectF();
        start.left = this.mStartMotionPath.x;
        start.top = this.mStartMotionPath.y;
        start.right = start.left + this.mStartMotionPath.width;
        start.bottom = start.top + this.mStartMotionPath.height;
        RectF end = new RectF();
        end.left = this.mEndMotionPath.x;
        end.top = this.mEndMotionPath.y;
        end.right = end.left + this.mEndMotionPath.width;
        end.bottom = end.top + this.mEndMotionPath.height;
        for (Key key : this.mKeyList) {
            if (!(key instanceof KeyPositionBase)) {
                layoutWidth2 = layoutWidth;
                layoutHeight2 = layoutHeight;
                x2 = x;
                y2 = y;
            } else {
                layoutWidth2 = layoutWidth;
                layoutHeight2 = layoutHeight;
                x2 = x;
                y2 = y;
                if (((KeyPositionBase) key).intersects(layoutWidth2, layoutHeight2, start, end, x2, y2)) {
                    return (KeyPositionBase) key;
                }
            }
            layoutWidth = layoutWidth2;
            layoutHeight = layoutHeight2;
            x = x2;
            y = y2;
        }
        return null;
    }

    int buildKeyFrames(float[] keyFrames, int[] mode) {
        if (keyFrames == null) {
            return 0;
        }
        int count = 0;
        double[] time = this.mSpline[0].getTimePoints();
        if (mode != null) {
            for (MotionPaths keyFrame : this.mMotionPaths) {
                mode[count] = keyFrame.mMode;
                count++;
            }
            count = 0;
        }
        for (double d : time) {
            this.mSpline[0].getPos(d, this.mInterpolateData);
            this.mStartMotionPath.getCenter(this.mInterpolateVariables, this.mInterpolateData, keyFrames, count);
            count += 2;
        }
        return count / 2;
    }

    int buildKeyBounds(float[] keyBounds, int[] mode) {
        if (keyBounds == null) {
            return 0;
        }
        int count = 0;
        double[] time = this.mSpline[0].getTimePoints();
        if (mode != null) {
            for (MotionPaths keyFrame : this.mMotionPaths) {
                mode[count] = keyFrame.mMode;
                count++;
            }
            count = 0;
        }
        for (double d : time) {
            this.mSpline[0].getPos(d, this.mInterpolateData);
            this.mStartMotionPath.getBounds(this.mInterpolateVariables, this.mInterpolateData, keyBounds, count);
            count += 2;
        }
        return count / 2;
    }

    int getAttributeValues(String attributeType, float[] points, int pointCount) {
        float f = 1.0f / (pointCount - 1);
        SplineSet spline = this.mAttributesMap.get(attributeType);
        if (spline == null) {
            return -1;
        }
        for (int j = 0; j < points.length; j++) {
            points[j] = spline.get(j / (points.length - 1));
        }
        int j2 = points.length;
        return j2;
    }

    void buildRect(float p, float[] path, int offset) {
        this.mSpline[0].getPos(getAdjustedPosition(p, null), this.mInterpolateData);
        this.mStartMotionPath.getRect(this.mInterpolateVariables, this.mInterpolateData, path, offset);
    }

    void buildRectangles(float[] path, int pointCount) {
        float mils = 1.0f / (pointCount - 1);
        for (int i = 0; i < pointCount; i++) {
            float position = i * mils;
            this.mSpline[0].getPos(getAdjustedPosition(position, null), this.mInterpolateData);
            this.mStartMotionPath.getRect(this.mInterpolateVariables, this.mInterpolateData, path, i * 8);
        }
    }

    float getKeyFrameParameter(int type, float x, float y) {
        float dx = this.mEndMotionPath.x - this.mStartMotionPath.x;
        float dy = this.mEndMotionPath.y - this.mStartMotionPath.y;
        float startCenterX = this.mStartMotionPath.x + (this.mStartMotionPath.width / 2.0f);
        float startCenterY = this.mStartMotionPath.y + (this.mStartMotionPath.height / 2.0f);
        float hypot = (float) Math.hypot(dx, dy);
        if (hypot < 1.0E-7d) {
            return Float.NaN;
        }
        float vx = x - startCenterX;
        float vy = y - startCenterY;
        float distFromStart = (float) Math.hypot(vx, vy);
        if (distFromStart == 0.0f) {
            return 0.0f;
        }
        float pathDistance = (vx * dx) + (vy * dy);
        switch (type) {
        }
        return 0.0f;
    }

    private void insertKey(MotionPaths point) {
        int pos = Collections.binarySearch(this.mMotionPaths, point);
        if (pos == 0) {
            Log.e(TAG, " KeyPath positon \"" + point.position + "\" outside of range");
        }
        this.mMotionPaths.add((-pos) - 1, point);
    }

    void addKeys(ArrayList<Key> list) {
        this.mKeyList.addAll(list);
    }

    void addKey(Key key) {
        this.mKeyList.add(key);
    }

    public void setPathMotionArc(int arc) {
        this.mPathMotionArc = arc;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setup(int i, int i2, float f, long j) {
        char c;
        HashMap<String, Integer> map;
        int i3;
        ArrayList<KeyTrigger> arrayList;
        int i4;
        HashSet<String> hashSet;
        Iterator<String> it;
        TimeCycleSplineSet timeCycleSplineSetMakeSpline;
        Iterator<String> it2;
        HashSet hashSet2;
        char c2;
        SplineSet splineSetMakeSpline;
        HashSet hashSet3;
        HashSet hashSet4 = new HashSet();
        HashSet<String> hashSet5 = new HashSet<>();
        HashSet<String> hashSet6 = new HashSet<>();
        HashSet<String> hashSet7 = new HashSet<>();
        HashMap<String, Integer> map2 = new HashMap<>();
        ArrayList<KeyTrigger> arrayList2 = null;
        if (this.mPathMotionArc != Key.UNSET) {
            this.mStartMotionPath.mPathMotionArc = this.mPathMotionArc;
        }
        this.mStartPoint.different(this.mEndPoint, hashSet6);
        if (this.mKeyList != null) {
            for (Key key : this.mKeyList) {
                if (key instanceof KeyPosition) {
                    KeyPosition keyPosition = (KeyPosition) key;
                    insertKey(new MotionPaths(i, i2, keyPosition, this.mStartMotionPath, this.mEndMotionPath));
                    if (keyPosition.mCurveFit != Key.UNSET) {
                        this.mCurveFitType = keyPosition.mCurveFit;
                    }
                } else if (key instanceof KeyCycle) {
                    key.getAttributeNames(hashSet7);
                } else if (key instanceof KeyTimeCycle) {
                    key.getAttributeNames(hashSet5);
                } else if (key instanceof KeyTrigger) {
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList<>();
                    }
                    arrayList2.add((KeyTrigger) key);
                } else {
                    key.setInterpolation(map2);
                    key.getAttributeNames(hashSet6);
                }
            }
        }
        if (arrayList2 != null) {
            this.mKeyTriggers = (KeyTrigger[]) arrayList2.toArray(new KeyTrigger[0]);
        }
        char c3 = 1;
        if (hashSet6.isEmpty()) {
            c = 1;
        } else {
            this.mAttributesMap = new HashMap<>();
            for (String str : hashSet6) {
                if (str.startsWith("CUSTOM,")) {
                    SparseArray sparseArray = new SparseArray();
                    String str2 = str.split(",")[c3];
                    for (Key key2 : this.mKeyList) {
                        char c4 = c3;
                        if (key2.mCustomConstraints == null) {
                            c3 = c4;
                        } else {
                            ConstraintAttribute constraintAttribute = key2.mCustomConstraints.get(str2);
                            if (constraintAttribute == null) {
                                hashSet3 = hashSet4;
                            } else {
                                hashSet3 = hashSet4;
                                sparseArray.append(key2.mFramePosition, constraintAttribute);
                            }
                            c3 = c4;
                            hashSet4 = hashSet3;
                        }
                    }
                    hashSet2 = hashSet4;
                    c2 = c3;
                    splineSetMakeSpline = SplineSet.makeCustomSpline(str, sparseArray);
                } else {
                    hashSet2 = hashSet4;
                    c2 = c3;
                    splineSetMakeSpline = SplineSet.makeSpline(str);
                }
                if (splineSetMakeSpline == null) {
                    c3 = c2;
                    hashSet4 = hashSet2;
                } else {
                    splineSetMakeSpline.setType(str);
                    this.mAttributesMap.put(str, splineSetMakeSpline);
                    c3 = c2;
                    hashSet4 = hashSet2;
                }
            }
            c = c3;
            if (this.mKeyList != null) {
                for (Key key3 : this.mKeyList) {
                    if (key3 instanceof KeyAttributes) {
                        key3.addValues(this.mAttributesMap);
                    }
                }
            }
            this.mStartPoint.addValues(this.mAttributesMap, 0);
            this.mEndPoint.addValues(this.mAttributesMap, 100);
            for (String str3 : this.mAttributesMap.keySet()) {
                int iIntValue = 0;
                if (map2.containsKey(str3)) {
                    iIntValue = map2.get(str3).intValue();
                }
                this.mAttributesMap.get(str3).setup(iIntValue);
            }
        }
        if (!hashSet5.isEmpty()) {
            if (this.mTimeCycleAttributesMap == null) {
                this.mTimeCycleAttributesMap = new HashMap<>();
            }
            Iterator<String> it3 = hashSet5.iterator();
            while (it3.hasNext()) {
                String next = it3.next();
                if (!this.mTimeCycleAttributesMap.containsKey(next)) {
                    if (next.startsWith("CUSTOM,")) {
                        SparseArray sparseArray2 = new SparseArray();
                        String str4 = next.split(",")[c];
                        for (Key key4 : this.mKeyList) {
                            if (key4.mCustomConstraints != null) {
                                ConstraintAttribute constraintAttribute2 = key4.mCustomConstraints.get(str4);
                                if (constraintAttribute2 == null) {
                                    it2 = it3;
                                } else {
                                    it2 = it3;
                                    sparseArray2.append(key4.mFramePosition, constraintAttribute2);
                                }
                                it3 = it2;
                            }
                        }
                        it = it3;
                        timeCycleSplineSetMakeSpline = TimeCycleSplineSet.makeCustomSpline(next, sparseArray2);
                    } else {
                        it = it3;
                        timeCycleSplineSetMakeSpline = TimeCycleSplineSet.makeSpline(next, j);
                    }
                    if (timeCycleSplineSetMakeSpline == null) {
                        it3 = it;
                    } else {
                        timeCycleSplineSetMakeSpline.setType(next);
                        this.mTimeCycleAttributesMap.put(next, timeCycleSplineSetMakeSpline);
                        it3 = it;
                    }
                }
            }
            if (this.mKeyList != null) {
                for (Key key5 : this.mKeyList) {
                    if (key5 instanceof KeyTimeCycle) {
                        ((KeyTimeCycle) key5).addTimeValues(this.mTimeCycleAttributesMap);
                    }
                }
            }
            for (String str5 : this.mTimeCycleAttributesMap.keySet()) {
                int iIntValue2 = 0;
                if (map2.containsKey(str5)) {
                    iIntValue2 = map2.get(str5).intValue();
                }
                this.mTimeCycleAttributesMap.get(str5).setup(iIntValue2);
            }
        }
        MotionPaths[] motionPathsArr = new MotionPaths[this.mMotionPaths.size() + 2];
        int i5 = 1;
        motionPathsArr[0] = this.mStartMotionPath;
        motionPathsArr[motionPathsArr.length - 1] = this.mEndMotionPath;
        if (this.mMotionPaths.size() > 0 && this.mCurveFitType == -1) {
            this.mCurveFitType = 0;
        }
        Iterator<MotionPaths> it4 = this.mMotionPaths.iterator();
        while (it4.hasNext()) {
            motionPathsArr[i5] = it4.next();
            i5++;
        }
        HashSet hashSet8 = new HashSet();
        for (String str6 : this.mEndMotionPath.attributes.keySet()) {
            if (this.mStartMotionPath.attributes.containsKey(str6) && !hashSet6.contains("CUSTOM," + str6)) {
                hashSet8.add(str6);
            }
        }
        this.mAttributeNames = (String[]) hashSet8.toArray(new String[0]);
        this.mAttributeInterpCount = new int[this.mAttributeNames.length];
        int i6 = 0;
        while (i6 < this.mAttributeNames.length) {
            String str7 = this.mAttributeNames[i6];
            this.mAttributeInterpCount[i6] = 0;
            int i7 = 0;
            while (true) {
                if (i7 >= motionPathsArr.length) {
                    hashSet = hashSet5;
                    break;
                } else {
                    if (motionPathsArr[i7].attributes.containsKey(str7)) {
                        int[] iArr = this.mAttributeInterpCount;
                        hashSet = hashSet5;
                        iArr[i6] = iArr[i6] + motionPathsArr[i7].attributes.get(str7).noOfInterpValues();
                        break;
                    }
                    i7++;
                }
            }
            i6++;
            hashSet5 = hashSet;
        }
        boolean z = motionPathsArr[0].mPathMotionArc != Key.UNSET ? c : 0;
        boolean[] zArr = new boolean[this.mAttributeNames.length + 18];
        int i8 = 1;
        while (i8 < motionPathsArr.length) {
            motionPathsArr[i8].different(motionPathsArr[i8 - 1], zArr, this.mAttributeNames, z);
            i8++;
            hashSet6 = hashSet6;
        }
        int i9 = 0;
        for (int i10 = 1; i10 < zArr.length; i10++) {
            if (zArr[i10]) {
                i9++;
            }
        }
        this.mInterpolateVariables = new int[i9];
        this.mInterpolateData = new double[this.mInterpolateVariables.length];
        this.mInterpolateVelocity = new double[this.mInterpolateVariables.length];
        int i11 = 0;
        for (int i12 = 1; i12 < zArr.length; i12++) {
            if (zArr[i12]) {
                this.mInterpolateVariables[i11] = i12;
                i11++;
            }
        }
        int length = motionPathsArr.length;
        int[] iArr2 = new int[2];
        iArr2[c] = this.mInterpolateVariables.length;
        iArr2[0] = length;
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, iArr2);
        double[] dArr2 = new double[motionPathsArr.length];
        int i13 = 0;
        boolean z2 = z;
        while (i13 < motionPathsArr.length) {
            motionPathsArr[i13].fillStandard(dArr[i13], this.mInterpolateVariables);
            dArr2[i13] = motionPathsArr[i13].time;
            i13++;
            z2 = z2 ? 1 : 0;
            i11 = i11;
        }
        int i14 = 0;
        while (i14 < this.mInterpolateVariables.length) {
            int i15 = this.mInterpolateVariables[i14];
            if (i15 < MotionPaths.names.length) {
                i4 = i14;
                String str8 = MotionPaths.names[this.mInterpolateVariables[i4]] + " [";
                int i16 = 0;
                while (i16 < motionPathsArr.length) {
                    str8 = str8 + dArr[i16][i4];
                    i16++;
                    i15 = i15;
                }
            } else {
                i4 = i14;
            }
            i14 = i4 + 1;
        }
        this.mSpline = new CurveFit[this.mAttributeNames.length + 1];
        int i17 = 0;
        while (i17 < this.mAttributeNames.length) {
            int i18 = 0;
            double[][] dArr3 = (double[][]) null;
            double[] dArr4 = null;
            int i19 = i17;
            String str9 = this.mAttributeNames[i19];
            HashSet<String> hashSet9 = hashSet7;
            int i20 = 0;
            while (true) {
                map = map2;
                if (i20 < motionPathsArr.length) {
                    if (!motionPathsArr[i20].hasCustomData(str9)) {
                        i3 = i20;
                        arrayList = arrayList2;
                    } else {
                        if (dArr3 != null) {
                            i3 = i20;
                        } else {
                            dArr4 = new double[motionPathsArr.length];
                            int length2 = motionPathsArr.length;
                            i3 = i20;
                            int[] iArr3 = new int[2];
                            iArr3[c] = motionPathsArr[i3].getCustomDataCount(str9);
                            iArr3[0] = length2;
                            dArr3 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, iArr3);
                        }
                        dArr4[i18] = motionPathsArr[i3].time;
                        arrayList = arrayList2;
                        motionPathsArr[i3].getCustomData(str9, dArr3[i18], 0);
                        i18++;
                    }
                    i20 = i3 + 1;
                    map2 = map;
                    arrayList2 = arrayList;
                }
            }
            this.mSpline[i19 + 1] = CurveFit.get(this.mCurveFitType, Arrays.copyOf(dArr4, i18), (double[][]) Arrays.copyOf(dArr3, i18));
            i17 = i19 + 1;
            hashSet7 = hashSet9;
            map2 = map;
            arrayList2 = arrayList2;
        }
        HashSet<String> hashSet10 = hashSet7;
        this.mSpline[0] = CurveFit.get(this.mCurveFitType, dArr2, dArr);
        if (motionPathsArr[0].mPathMotionArc != Key.UNSET) {
            int length3 = motionPathsArr.length;
            int[] iArr4 = new int[length3];
            double[] dArr5 = new double[length3];
            int[] iArr5 = new int[2];
            iArr5[c] = 2;
            iArr5[0] = length3;
            double[][] dArr6 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, iArr5);
            int i21 = 0;
            MotionPaths[] motionPathsArr2 = motionPathsArr;
            while (i21 < length3) {
                iArr4[i21] = motionPathsArr2[i21].mPathMotionArc;
                dArr5[i21] = motionPathsArr2[i21].time;
                dArr6[i21][0] = motionPathsArr2[i21].x;
                dArr6[i21][c] = r19[i21].y;
                i21++;
                motionPathsArr2 = motionPathsArr2;
                length3 = length3;
            }
            this.mArcSpline = CurveFit.getArc(iArr4, dArr5, dArr6);
        }
        float preCycleDistance = Float.NaN;
        this.mCycleMap = new HashMap<>();
        if (this.mKeyList != null) {
            for (String str10 : hashSet10) {
                KeyCycleOscillator keyCycleOscillatorMakeSpline = KeyCycleOscillator.makeSpline(str10);
                if (keyCycleOscillatorMakeSpline != null) {
                    if (keyCycleOscillatorMakeSpline.variesByPath() && Float.isNaN(preCycleDistance)) {
                        preCycleDistance = getPreCycleDistance();
                    }
                    keyCycleOscillatorMakeSpline.setType(str10);
                    this.mCycleMap.put(str10, keyCycleOscillatorMakeSpline);
                }
            }
            for (Key key6 : this.mKeyList) {
                if (key6 instanceof KeyCycle) {
                    ((KeyCycle) key6).addCycleValues(this.mCycleMap);
                }
            }
            Iterator<KeyCycleOscillator> it5 = this.mCycleMap.values().iterator();
            while (it5.hasNext()) {
                it5.next().setup(preCycleDistance);
            }
        }
    }

    public String toString() {
        return " start: x: " + this.mStartMotionPath.x + " y: " + this.mStartMotionPath.y + " end: x: " + this.mEndMotionPath.x + " y: " + this.mEndMotionPath.y;
    }

    private void readView(MotionPaths motionPaths) {
        motionPaths.setBounds((int) this.mView.getX(), (int) this.mView.getY(), this.mView.getWidth(), this.mView.getHeight());
    }

    public void setView(View view) {
        this.mView = view;
        this.mId = view.getId();
        ViewGroup.LayoutParams lp = view.getLayoutParams();
        if (lp instanceof ConstraintLayout.LayoutParams) {
            this.mConstraintTag = ((ConstraintLayout.LayoutParams) lp).getConstraintTag();
        }
    }

    void setStartCurrentState(View v) {
        this.mStartMotionPath.time = 0.0f;
        this.mStartMotionPath.position = 0.0f;
        this.mStartMotionPath.setBounds(v.getX(), v.getY(), v.getWidth(), v.getHeight());
        this.mStartPoint.setState(v);
    }

    void setStartState(ConstraintWidget cw, ConstraintSet constraintSet) {
        this.mStartMotionPath.time = 0.0f;
        this.mStartMotionPath.position = 0.0f;
        readView(this.mStartMotionPath);
        this.mStartMotionPath.setBounds(cw.getX(), cw.getY(), cw.getWidth(), cw.getHeight());
        ConstraintSet.Constraint constraint = constraintSet.getParameters(this.mId);
        this.mStartMotionPath.applyParameters(constraint);
        this.mMotionStagger = constraint.motion.mMotionStagger;
        this.mStartPoint.setState(cw, constraintSet, this.mId);
    }

    void setEndState(ConstraintWidget cw, ConstraintSet constraintSet) {
        this.mEndMotionPath.time = 1.0f;
        this.mEndMotionPath.position = 1.0f;
        readView(this.mEndMotionPath);
        this.mEndMotionPath.setBounds(cw.getX(), cw.getY(), cw.getWidth(), cw.getHeight());
        this.mEndMotionPath.applyParameters(constraintSet.getParameters(this.mId));
        this.mEndPoint.setState(cw, constraintSet, this.mId);
    }

    private float getAdjustedPosition(float position, float[] velocity) {
        if (velocity != null) {
            velocity[0] = 1.0f;
        } else if (this.mStaggerScale != 1.0d) {
            if (position < this.mStaggerOffset) {
                position = 0.0f;
            }
            if (position > this.mStaggerOffset && position < 1.0d) {
                position = (position - this.mStaggerOffset) * this.mStaggerScale;
            }
        }
        float adjusted = position;
        Easing easing = this.mStartMotionPath.mKeyFrameEasing;
        float start = 0.0f;
        float end = Float.NaN;
        for (MotionPaths frame : this.mMotionPaths) {
            if (frame.mKeyFrameEasing != null) {
                if (frame.time < position) {
                    easing = frame.mKeyFrameEasing;
                    start = frame.time;
                } else if (Float.isNaN(end)) {
                    end = frame.time;
                }
            }
        }
        if (easing != null) {
            if (Float.isNaN(end)) {
                end = 1.0f;
            }
            float offset = (position - start) / (end - start);
            float new_offset = (float) easing.get(offset);
            adjusted = ((end - start) * new_offset) + start;
            if (velocity != null) {
                velocity[0] = (float) easing.getDiff(offset);
            }
        }
        return adjusted;
    }

    /* JADX WARN: Incorrect condition in loop: B:12:0x003f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    boolean interpolate(android.view.View r21, float r22, long r23, androidx.constraintlayout.motion.widget.KeyCache r25) {
        /*
            Method dump skipped, instruction units count: 561
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionController.interpolate(android.view.View, float, long, androidx.constraintlayout.motion.widget.KeyCache):boolean");
    }

    void getDpDt(float position, float locationX, float locationY, float[] mAnchorDpDt) {
        float position2 = getAdjustedPosition(position, this.mVelocity);
        if (this.mSpline != null) {
            this.mSpline[0].getSlope(position2, this.mInterpolateVelocity);
            this.mSpline[0].getPos(position2, this.mInterpolateData);
            float v = this.mVelocity[0];
            for (int i = 0; i < this.mInterpolateVelocity.length; i++) {
                double[] dArr = this.mInterpolateVelocity;
                dArr[i] = dArr[i] * ((double) v);
            }
            if (this.mArcSpline == null) {
                this.mStartMotionPath.setDpDt(locationX, locationY, mAnchorDpDt, this.mInterpolateVariables, this.mInterpolateVelocity, this.mInterpolateData);
                return;
            } else {
                if (this.mInterpolateData.length > 0) {
                    this.mArcSpline.getPos(position2, this.mInterpolateData);
                    this.mArcSpline.getSlope(position2, this.mInterpolateVelocity);
                    this.mStartMotionPath.setDpDt(locationX, locationY, mAnchorDpDt, this.mInterpolateVariables, this.mInterpolateVelocity, this.mInterpolateData);
                    return;
                }
                return;
            }
        }
        float dleft = this.mEndMotionPath.x - this.mStartMotionPath.x;
        float dTop = this.mEndMotionPath.y - this.mStartMotionPath.y;
        float dWidth = this.mEndMotionPath.width - this.mStartMotionPath.width;
        float dHeight = this.mEndMotionPath.height - this.mStartMotionPath.height;
        float dRight = dleft + dWidth;
        float dBottom = dTop + dHeight;
        mAnchorDpDt[0] = ((1.0f - locationX) * dleft) + (dRight * locationX);
        mAnchorDpDt[1] = ((1.0f - locationY) * dTop) + (dBottom * locationY);
    }

    void getPostLayoutDvDp(float position, int width, int height, float locationX, float locationY, float[] mAnchorDpDt) {
        VelocityMatrix vmat;
        float position2 = getAdjustedPosition(position, this.mVelocity);
        SplineSet trans_x = this.mAttributesMap == null ? null : this.mAttributesMap.get("translationX");
        SplineSet trans_y = this.mAttributesMap == null ? null : this.mAttributesMap.get("translationY");
        SplineSet rotation = this.mAttributesMap == null ? null : this.mAttributesMap.get("rotation");
        SplineSet scale_x = this.mAttributesMap == null ? null : this.mAttributesMap.get("scaleX");
        SplineSet scale_y = this.mAttributesMap == null ? null : this.mAttributesMap.get("scaleY");
        KeyCycleOscillator osc_x = this.mCycleMap == null ? null : this.mCycleMap.get("translationX");
        KeyCycleOscillator osc_y = this.mCycleMap == null ? null : this.mCycleMap.get("translationY");
        KeyCycleOscillator osc_r = this.mCycleMap == null ? null : this.mCycleMap.get("rotation");
        KeyCycleOscillator osc_sx = this.mCycleMap == null ? null : this.mCycleMap.get("scaleX");
        KeyCycleOscillator osc_sy = this.mCycleMap != null ? this.mCycleMap.get("scaleY") : null;
        VelocityMatrix vmat2 = new VelocityMatrix();
        vmat2.clear();
        vmat2.setRotationVelocity(rotation, position2);
        vmat2.setTranslationVelocity(trans_x, trans_y, position2);
        vmat2.setScaleVelocity(scale_x, scale_y, position2);
        vmat2.setRotationVelocity(osc_r, position2);
        vmat2.setTranslationVelocity(osc_x, osc_y, position2);
        vmat2.setScaleVelocity(osc_sx, osc_sy, position2);
        if (this.mArcSpline != null) {
            if (this.mInterpolateData.length > 0) {
                vmat = vmat2;
                this.mArcSpline.getPos(position2, this.mInterpolateData);
                this.mArcSpline.getSlope(position2, this.mInterpolateVelocity);
                this.mStartMotionPath.setDpDt(locationX, locationY, mAnchorDpDt, this.mInterpolateVariables, this.mInterpolateVelocity, this.mInterpolateData);
            } else {
                vmat = vmat2;
            }
            vmat.applyTransform(locationX, locationY, width, height, mAnchorDpDt);
            return;
        }
        if (this.mSpline != null) {
            float position3 = getAdjustedPosition(position2, this.mVelocity);
            this.mSpline[0].getSlope(position3, this.mInterpolateVelocity);
            this.mSpline[0].getPos(position3, this.mInterpolateData);
            float v = this.mVelocity[0];
            int i = 0;
            while (i < this.mInterpolateVelocity.length) {
                double[] dArr = this.mInterpolateVelocity;
                int i2 = i;
                dArr[i2] = dArr[i] * ((double) v);
                i = i2 + 1;
            }
            this.mStartMotionPath.setDpDt(locationX, locationY, mAnchorDpDt, this.mInterpolateVariables, this.mInterpolateVelocity, this.mInterpolateData);
            vmat2.applyTransform(locationX, locationY, width, height, mAnchorDpDt);
            return;
        }
        float dleft = this.mEndMotionPath.x - this.mStartMotionPath.x;
        float dTop = this.mEndMotionPath.y - this.mStartMotionPath.y;
        float dWidth = this.mEndMotionPath.width - this.mStartMotionPath.width;
        float dHeight = this.mEndMotionPath.height - this.mStartMotionPath.height;
        float dRight = dleft + dWidth;
        float dBottom = dTop + dHeight;
        mAnchorDpDt[0] = ((1.0f - locationX) * dleft) + (dRight * locationX);
        mAnchorDpDt[1] = ((1.0f - locationY) * dTop) + (dBottom * locationY);
        vmat2.clear();
        vmat2.setRotationVelocity(rotation, position2);
        vmat2.setTranslationVelocity(trans_x, trans_y, position2);
        vmat2.setScaleVelocity(scale_x, scale_y, position2);
        vmat2.setRotationVelocity(osc_r, position2);
        vmat2.setTranslationVelocity(osc_x, osc_y, position2);
        vmat2.setScaleVelocity(osc_sx, osc_sy, position2);
        vmat2.applyTransform(locationX, locationY, width, height, mAnchorDpDt);
    }

    public int getDrawPath() {
        int mode = this.mStartMotionPath.mDrawPath;
        for (MotionPaths keyFrame : this.mMotionPaths) {
            mode = Math.max(mode, keyFrame.mDrawPath);
        }
        return Math.max(mode, this.mEndMotionPath.mDrawPath);
    }

    public void setDrawPath(int debugMode) {
        this.mStartMotionPath.mDrawPath = debugMode;
    }

    String name() {
        Context context = this.mView.getContext();
        return context.getResources().getResourceEntryName(this.mView.getId());
    }

    void positionKeyframe(View view, KeyPositionBase key, float x, float y, String[] attribute, float[] value) {
        RectF start = new RectF();
        start.left = this.mStartMotionPath.x;
        start.top = this.mStartMotionPath.y;
        start.right = start.left + this.mStartMotionPath.width;
        start.bottom = start.top + this.mStartMotionPath.height;
        RectF end = new RectF();
        end.left = this.mEndMotionPath.x;
        end.top = this.mEndMotionPath.y;
        end.right = end.left + this.mEndMotionPath.width;
        end.bottom = end.top + this.mEndMotionPath.height;
        key.positionAttributes(view, start, end, x, y, attribute, value);
    }

    public int getkeyFramePositions(int[] type, float[] pos) {
        int i = 0;
        int count = 0;
        for (Key key : this.mKeyList) {
            int i2 = i + 1;
            type[i] = key.mFramePosition + (key.mType * 1000);
            float time = key.mFramePosition / 100.0f;
            this.mSpline[0].getPos(time, this.mInterpolateData);
            this.mStartMotionPath.getCenter(this.mInterpolateVariables, this.mInterpolateData, pos, count);
            count += 2;
            i = i2;
        }
        return i;
    }

    public int getKeyFrameInfo(int type, int[] info) {
        int count = 0;
        int cursor = 0;
        float[] pos = new float[2];
        for (Key key : this.mKeyList) {
            if (key.mType == type || type != -1) {
                int len = cursor;
                info[cursor] = 0;
                int cursor2 = cursor + 1;
                info[cursor2] = key.mType;
                int cursor3 = cursor2 + 1;
                info[cursor3] = key.mFramePosition;
                float time = key.mFramePosition / 100.0f;
                this.mSpline[0].getPos(time, this.mInterpolateData);
                this.mStartMotionPath.getCenter(this.mInterpolateVariables, this.mInterpolateData, pos, 0);
                int cursor4 = cursor3 + 1;
                info[cursor4] = Float.floatToIntBits(pos[0]);
                int cursor5 = cursor4 + 1;
                info[cursor5] = Float.floatToIntBits(pos[1]);
                if (key instanceof KeyPosition) {
                    KeyPosition kp = (KeyPosition) key;
                    int cursor6 = cursor5 + 1;
                    info[cursor6] = kp.mPositionType;
                    int cursor7 = cursor6 + 1;
                    info[cursor7] = Float.floatToIntBits(kp.mPercentX);
                    cursor5 = cursor7 + 1;
                    info[cursor5] = Float.floatToIntBits(kp.mPercentY);
                }
                cursor = cursor5 + 1;
                info[len] = cursor - len;
                count++;
            }
        }
        return count;
    }
}
