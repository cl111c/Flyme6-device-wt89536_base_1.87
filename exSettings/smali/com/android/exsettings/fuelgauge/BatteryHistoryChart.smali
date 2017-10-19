.class public Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;
.super Landroid/view/View;
.source "BatteryHistoryChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$DateLabel;,
        Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;,
        Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;,
        Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;
    }
.end annotation


# instance fields
.field final mBatCriticalPath:Landroid/graphics/Path;

.field final mBatGoodPath:Landroid/graphics/Path;

.field mBatHigh:I

.field final mBatLevelPath:Landroid/graphics/Path;

.field mBatLow:I

.field final mBatWarnPath:Landroid/graphics/Path;

.field final mBatteryBackgroundPaint:Landroid/graphics/Paint;

.field mBatteryBroadcast:Landroid/content/Intent;

.field mBatteryCriticalLevel:I

.field final mBatteryCriticalPaint:Landroid/graphics/Paint;

.field final mBatteryGoodPaint:Landroid/graphics/Paint;

.field mBatteryLevel:I

.field mBatteryWarnLevel:I

.field final mBatteryWarnPaint:Landroid/graphics/Paint;

.field mBitmap:Landroid/graphics/Bitmap;

.field mCameraOnLabel:Ljava/lang/String;

.field mCameraOnOffset:I

.field final mCameraOnPaint:Landroid/graphics/Paint;

.field final mCameraOnPath:Landroid/graphics/Path;

.field mCanvas:Landroid/graphics/Canvas;

.field mChargeDurationString:Ljava/lang/String;

.field mChargeDurationStringWidth:I

.field mChargeLabelString:Ljava/lang/String;

.field mChargeLabelStringWidth:I

.field mChargingLabel:Ljava/lang/String;

.field mChargingOffset:I

.field final mChargingPaint:Landroid/graphics/Paint;

.field final mChargingPath:Landroid/graphics/Path;

.field mChartMinHeight:I

.field mCpuRunningLabel:Ljava/lang/String;

.field mCpuRunningOffset:I

.field final mCpuRunningPaint:Landroid/graphics/Paint;

.field final mCpuRunningPath:Landroid/graphics/Path;

.field final mDateLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$DateLabel;",
            ">;"
        }
    .end annotation
.end field

.field final mDateLinePaint:Landroid/graphics/Paint;

.field final mDateLinePath:Landroid/graphics/Path;

.field final mDebugRectPaint:Landroid/graphics/Paint;

.field mDischarging:Z

.field mDrainString:Ljava/lang/String;

.field mDrainStringWidth:I

.field mDurationString:Ljava/lang/String;

.field mDurationStringWidth:I

.field mEndDataWallTime:J

.field mEndWallTime:J

.field mFlashlightOnLabel:Ljava/lang/String;

.field mFlashlightOnOffset:I

.field final mFlashlightOnPaint:Landroid/graphics/Paint;

.field final mFlashlightOnPath:Landroid/graphics/Path;

.field mGpsOnLabel:Ljava/lang/String;

.field mGpsOnOffset:I

.field final mGpsOnPaint:Landroid/graphics/Paint;

.field final mGpsOnPath:Landroid/graphics/Path;

.field mHaveCamera:Z

.field mHaveFlashlight:Z

.field mHaveGps:Z

.field mHavePhoneSignal:Z

.field mHaveWifi:Z

.field mHeaderHeight:I

.field mHeaderTextAscent:I

.field mHeaderTextDescent:I

.field final mHeaderTextPaint:Landroid/text/TextPaint;

.field mHistDataEnd:J

.field mHistEnd:J

.field mHistStart:J

.field mLargeMode:Z

.field mLastHeight:I

.field mLastWidth:I

.field mLevelBottom:I

.field mLevelLeft:I

.field mLevelOffset:I

.field mLevelRight:I

.field mLevelTop:I

.field mLineWidth:I

.field mMaxPercentLabelString:Ljava/lang/String;

.field mMaxPercentLabelStringWidth:I

.field mMinPercentLabelString:Ljava/lang/String;

.field mMinPercentLabelStringWidth:I

.field mNumHist:I

.field final mPhoneSignalChart:Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;

.field mPhoneSignalLabel:Ljava/lang/String;

.field mPhoneSignalOffset:I

.field mScreenOnLabel:Ljava/lang/String;

.field mScreenOnOffset:I

.field final mScreenOnPaint:Landroid/graphics/Paint;

.field final mScreenOnPath:Landroid/graphics/Path;

.field mStartWallTime:J

.field mStats:Landroid/os/BatteryStats;

.field mStatsPeriod:J

.field mTextAscent:I

.field mTextDescent:I

.field final mTextPaint:Landroid/text/TextPaint;

.field mThinLineWidth:I

.field final mTimeLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;",
            ">;"
        }
    .end annotation
.end field

.field final mTimeRemainPaint:Landroid/graphics/Paint;

.field final mTimeRemainPath:Landroid/graphics/Path;

.field mWifiRunningLabel:Ljava/lang/String;

.field mWifiRunningOffset:I

.field final mWifiRunningPaint:Landroid/graphics/Paint;

.field final mWifiRunningPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 355
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    .line 127
    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    .line 128
    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    .line 129
    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    .line 130
    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    .line 131
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    .line 132
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    .line 133
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    .line 134
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    .line 135
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    .line 136
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    .line 137
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    .line 138
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    .line 139
    new-instance v13, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-direct {v13}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;

    .line 140
    new-instance v13, Landroid/text/TextPaint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 141
    new-instance v13, Landroid/text/TextPaint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    .line 142
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    .line 144
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 145
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    .line 146
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    .line 147
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    .line 148
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    .line 149
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    .line 150
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    .line 151
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    .line 152
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    .line 153
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    .line 154
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    .line 155
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    .line 156
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    .line 196
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    .line 197
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    .line 231
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    .line 232
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    .line 359
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10e0051

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryWarnLevel:I

    .line 361
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10e004f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalLevel:I

    .line 364
    const/4 v13, 0x1

    const/high16 v14, 0x40000000    # 2.0f

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-static {v13, v14, v15}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    .line 367
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    const v14, -0xff6978

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 368
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    const/16 v14, 0x80

    const/4 v15, 0x0

    const/16 v16, 0x80

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 370
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    const/16 v14, 0x80

    const/16 v15, 0x80

    const/16 v16, 0x80

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 372
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    const/16 v14, 0xc0

    const/16 v15, 0x80

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 374
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    const v14, -0x312845

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 376
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;

    sget-object v14, Lcom/android/exsettings/Utils;->BADNESS_COLORS:[I

    invoke-virtual {v13, v14}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;->setColors([I)V

    .line 385
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    const/16 v14, 0xff

    const/16 v15, 0xff

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 386
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    const v14, -0xff6978

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 388
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    const v14, -0xff6978

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 389
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    const v14, -0xff6978

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 390
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    const v14, -0xff6978

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 391
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    const v14, -0xff6978

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 392
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    const v14, -0xff6978

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 393
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    const v14, -0xff6978

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 395
    sget-object v13, Lcom/android/exsettings/R$styleable;->BatteryHistoryChart:[I

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v13, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 399
    .local v2, "a":Landroid/content/res/TypedArray;
    new-instance v9, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;

    invoke-direct {v9}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;-><init>()V

    .line 400
    .local v9, "mainTextAttrs":Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;
    new-instance v7, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;

    invoke-direct {v7}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;-><init>()V

    .line 401
    .local v7, "headTextAttrs":Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v2, v13}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->retrieve(Landroid/content/Context;Landroid/content/res/TypedArray;I)V

    .line 402
    const/16 v13, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v2, v13}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->retrieve(Landroid/content/Context;Landroid/content/res/TypedArray;I)V

    .line 404
    const/4 v12, 0x0

    .line 405
    .local v12, "shadowcolor":I
    const/4 v4, 0x0

    .local v4, "dx":F
    const/4 v5, 0x0

    .local v5, "dy":F
    const/4 v11, 0x0

    .line 407
    .local v11, "r":F
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v10

    .line 408
    .local v10, "n":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v10, :cond_0

    .line 409
    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 411
    .local v3, "attr":I
    packed-switch v3, :pswitch_data_0

    .line 408
    :goto_1
    :pswitch_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 413
    :pswitch_1
    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 414
    goto :goto_1

    .line 417
    :pswitch_2
    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 418
    goto :goto_1

    .line 421
    :pswitch_3
    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 422
    goto :goto_1

    .line 425
    :pswitch_4
    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    .line 426
    goto :goto_1

    .line 429
    :pswitch_5
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    iput-object v13, v9, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->textColor:Landroid/content/res/ColorStateList;

    .line 430
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    iput-object v13, v7, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->textColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 434
    :pswitch_6
    iget v13, v9, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    iput v13, v9, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    .line 435
    iget v13, v7, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    iput v13, v7, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    goto :goto_1

    .line 439
    :pswitch_7
    iget v13, v9, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v9, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    .line 440
    iget v13, v7, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v7, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    goto :goto_1

    .line 444
    :pswitch_8
    iget v13, v9, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v9, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    .line 445
    iget v13, v7, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v7, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    goto :goto_1

    .line 449
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 450
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 451
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 452
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 453
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 454
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 455
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 456
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 460
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 464
    :pswitch_b
    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChartMinHeight:I

    goto/16 :goto_1

    .line 469
    .end local v3    # "attr":I
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 471
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v13}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->apply(Landroid/content/Context;Landroid/text/TextPaint;)V

    .line 472
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v13}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->apply(Landroid/content/Context;Landroid/text/TextPaint;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 476
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v6, v13, 0x2

    .line 477
    .local v6, "hairlineWidth":I
    const/4 v13, 0x1

    if-ge v6, v13, :cond_1

    .line 478
    const/4 v6, 0x1

    .line 480
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    int-to-float v14, v6

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 481
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    new-instance v14, Landroid/graphics/DashPathEffect;

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 484
    if-eqz v12, :cond_2

    .line 485
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v13, v11, v4, v5, v12}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 486
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v13, v11, v4, v5, v12}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 488
    :cond_2
    return-void

    .line 411
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isDayFirst()Z
    .locals 3

    .prologue
    .line 696
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, "value":Ljava/lang/String;
    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method addDateLabel(Ljava/util/Calendar;IIZ)V
    .locals 14
    .param p1, "cal"    # Ljava/util/Calendar;
    .param p2, "levelLeft"    # I
    .param p3, "levelRight"    # I
    .param p4, "isDayFirst"    # Z

    .prologue
    .line 1154
    iget-wide v4, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 1155
    .local v4, "walltimeStart":J
    iget-wide v6, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    sub-long v2, v6, v4

    .line 1156
    .local v2, "walltimeChange":J
    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$DateLabel;

    iget-object v8, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    sub-int v9, p3, p2

    int-to-long v12, v9

    mul-long/2addr v10, v12

    div-long/2addr v10, v2

    long-to-int v9, v10

    add-int v9, v9, p2

    move/from16 v0, p4

    invoke-direct {v7, v8, v9, p1, v0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$DateLabel;-><init>(Landroid/text/TextPaint;ILjava/util/Calendar;Z)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1160
    return-void
.end method

.method addTimeLabel(Ljava/util/Calendar;IIZ)V
    .locals 14
    .param p1, "cal"    # Ljava/util/Calendar;
    .param p2, "levelLeft"    # I
    .param p3, "levelRight"    # I
    .param p4, "is24hr"    # Z

    .prologue
    .line 1145
    iget-wide v4, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 1146
    .local v4, "walltimeStart":J
    iget-wide v6, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    sub-long v2, v6, v4

    .line 1147
    .local v2, "walltimeChange":J
    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;

    iget-object v8, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    sub-int v9, p3, p2

    int-to-long v12, v9

    mul-long/2addr v10, v12

    div-long/2addr v10, v2

    long-to-int v9, v10

    add-int v9, v9, p2

    move/from16 v0, p4

    invoke-direct {v7, v8, v9, p1, v0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;-><init>(Landroid/text/TextPaint;ILjava/util/Calendar;Z)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1151
    return-void
.end method

.method drawChart(Landroid/graphics/Canvas;II)V
    .locals 29
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1190
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->isLayoutRtl()Z

    move-result v15

    .line 1191
    .local v15, "layoutRtl":Z
    if-eqz v15, :cond_3

    move/from16 v22, p2

    .line 1192
    .local v22, "textStartX":I
    :goto_0
    if-eqz v15, :cond_4

    const/16 v21, 0x0

    .line 1193
    .local v21, "textEndX":I
    :goto_1
    if-eqz v15, :cond_5

    sget-object v19, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 1194
    .local v19, "textAlignLeft":Landroid/graphics/Paint$Align;
    :goto_2
    if-eqz v15, :cond_6

    sget-object v20, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 1201
    .local v20, "textAlignRight":Landroid/graphics/Paint$Align;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1206
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_a

    .line 1207
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x4

    add-int v25, v2, v3

    .line 1208
    .local v25, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int v27, v2, v3

    .line 1209
    .local v27, "ytick":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1210
    const/4 v14, 0x0

    .line 1211
    .local v14, "lastX":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_b

    .line 1212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;

    .line 1213
    .local v12, "label":Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;
    if-nez v11, :cond_7

    .line 1214
    iget v2, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v3, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int v24, v2, v3

    .line 1215
    .local v24, "x":I
    if-gez v24, :cond_1

    .line 1216
    const/16 v24, 0x0

    .line 1219
    :cond_1
    iget-object v2, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    move/from16 v0, v24

    int-to-float v3, v0

    move/from16 v0, v25

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1220
    iget v2, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v3, v2

    move/from16 v0, v27

    int-to-float v4, v0

    iget v2, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int v2, v2, v27

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1221
    iget v2, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int v14, v24, v2

    .line 1211
    :cond_2
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1191
    .end local v11    # "i":I
    .end local v12    # "label":Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;
    .end local v14    # "lastX":I
    .end local v19    # "textAlignLeft":Landroid/graphics/Paint$Align;
    .end local v20    # "textAlignRight":Landroid/graphics/Paint$Align;
    .end local v21    # "textEndX":I
    .end local v22    # "textStartX":I
    .end local v24    # "x":I
    .end local v25    # "y":I
    .end local v27    # "ytick":I
    :cond_3
    const/16 v22, 0x0

    goto/16 :goto_0

    .restart local v22    # "textStartX":I
    :cond_4
    move/from16 v21, p2

    .line 1192
    goto/16 :goto_1

    .line 1193
    .restart local v21    # "textEndX":I
    :cond_5
    sget-object v19, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto/16 :goto_2

    .line 1194
    .restart local v19    # "textAlignLeft":Landroid/graphics/Paint$Align;
    :cond_6
    sget-object v20, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto/16 :goto_3

    .line 1222
    .restart local v11    # "i":I
    .restart local v12    # "label":Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;
    .restart local v14    # "lastX":I
    .restart local v20    # "textAlignRight":Landroid/graphics/Paint$Align;
    .restart local v25    # "y":I
    .restart local v27    # "ytick":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v11, v2, :cond_8

    .line 1223
    iget v2, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v3, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int v24, v2, v3

    .line 1224
    .restart local v24    # "x":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    add-int/2addr v2, v14

    move/from16 v0, v24

    if-lt v0, v2, :cond_2

    .line 1227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    add-int/lit8 v3, v11, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;

    .line 1228
    .local v17, "nextLabel":Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    sub-int v2, p2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v2, v3

    move/from16 v0, v24

    if-gt v0, v2, :cond_2

    .line 1232
    iget-object v2, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    move/from16 v0, v24

    int-to-float v3, v0

    move/from16 v0, v25

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1233
    iget v2, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v3, v2

    move/from16 v0, v27

    int-to-float v4, v0

    iget v2, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int v2, v2, v27

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1234
    iget v2, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int v14, v24, v2

    .line 1235
    goto :goto_5

    .line 1236
    .end local v17    # "nextLabel":Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;
    .end local v24    # "x":I
    :cond_8
    iget v2, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v3, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int v24, v2, v3

    .line 1237
    .restart local v24    # "x":I
    iget v2, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int v2, v2, v24

    move/from16 v0, p2

    if-lt v2, v0, :cond_9

    .line 1238
    add-int/lit8 v2, p2, -0x1

    iget v3, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    sub-int v24, v2, v3

    .line 1241
    :cond_9
    iget-object v2, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    move/from16 v0, v24

    int-to-float v3, v0

    move/from16 v0, v25

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1242
    iget v2, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v3, v2

    move/from16 v0, v27

    int-to-float v4, v0

    iget v2, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int v2, v2, v27

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 1245
    .end local v11    # "i":I
    .end local v12    # "label":Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;
    .end local v14    # "lastX":I
    .end local v24    # "x":I
    .end local v25    # "y":I
    .end local v27    # "ytick":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 1246
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x4

    add-int v25, v2, v3

    .line 1247
    .restart local v25    # "y":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move/from16 v0, v25

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1253
    .end local v25    # "y":I
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    neg-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextDescent:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3

    add-int v10, v2, v3

    .line 1254
    .local v10, "headerTop":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    int-to-float v4, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1257
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargeDurationStringWidth:I

    div-int/lit8 v18, v2, 0x2

    .line 1258
    .local v18, "stringHalfWidth":I
    if-eqz v15, :cond_c

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    .line 1259
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargeDurationStringWidth:I

    sub-int v2, p2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDrainStringWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v3, v2, 0x2

    if-eqz v15, :cond_1e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDrainStringWidth:I

    :goto_6
    add-int v9, v3, v2

    .line 1262
    .local v9, "headerCenter":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargeDurationString:Ljava/lang/String;

    sub-int v3, v9, v18

    int-to-float v3, v3

    int-to-float v4, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDrainString:Ljava/lang/String;

    move/from16 v0, v21

    int-to-float v3, v0

    int-to-float v4, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1272
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1276
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1280
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_10

    .line 1282
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    sub-int v2, p3, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v23, v2, v3

    .line 1283
    .local v23, "top":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;->draw(Landroid/graphics/Canvas;II)V

    .line 1285
    .end local v23    # "top":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1289
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    .line 1291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1293
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v2, :cond_13

    .line 1294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1299
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHaveFlashlight:Z

    if-eqz v2, :cond_14

    .line 1300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    .line 1302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1305
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHaveCamera:Z

    if-eqz v2, :cond_15

    .line 1306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 1308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1311
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v2, :cond_16

    .line 1312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    .line 1314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1317
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    .line 1319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1322
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v2, :cond_1d

    .line 1324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v8

    .line 1325
    .local v8, "align":Landroid/graphics/Paint$Align;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1326
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_18

    .line 1327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalLabel:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1330
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v2, :cond_19

    .line 1331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnLabel:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1334
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHaveFlashlight:Z

    if-eqz v2, :cond_1a

    .line 1335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnLabel:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1338
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHaveCamera:Z

    if-eqz v2, :cond_1b

    .line 1339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnLabel:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1342
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v2, :cond_1c

    .line 1343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningLabel:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1346
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningLabel:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingLabel:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnLabel:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v8}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1355
    .end local v8    # "align":Landroid/graphics/Paint$Align;
    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v2, v3

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v2, v5

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1357
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v2, :cond_1f

    .line 1358
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_7
    const/16 v2, 0xa

    if-ge v11, v2, :cond_1f

    .line 1359
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    sub-int/2addr v3, v4

    mul-int/2addr v3, v11

    div-int/lit8 v3, v3, 0xa

    add-int v25, v2, v3

    .line 1360
    .restart local v25    # "y":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v3, v2

    move/from16 v0, v25

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    int-to-float v5, v2

    move/from16 v0, v25

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1358
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 1259
    .end local v9    # "headerCenter":I
    .end local v11    # "i":I
    .end local v25    # "y":I
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargeLabelStringWidth:I

    goto/16 :goto_6

    .line 1366
    .restart local v9    # "headerCenter":I
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelString:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mMinPercentLabelString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelStringWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mMinPercentLabelStringWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1370
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v2, v4

    int-to-float v4, v2

    move/from16 v0, p2

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_22

    .line 1374
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    add-int v28, v2, v3

    .line 1375
    .local v28, "ytop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move/from16 v26, v0

    .line 1376
    .local v26, "ybottom":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    .line 1377
    .local v13, "lastLeft":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v11, v2, -0x1

    .restart local v11    # "i":I
    :goto_8
    if-ltz v11, :cond_22

    .line 1379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$DateLabel;

    .line 1380
    .local v12, "label":Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$DateLabel;
    iget v2, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int v16, v2, v3

    .line 1381
    .local v16, "left":I
    iget v2, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x2

    add-int v24, v2, v3

    .line 1382
    .restart local v24    # "x":I
    iget v2, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$DateLabel;->width:I

    add-int v2, v2, v24

    if-lt v2, v13, :cond_21

    .line 1383
    iget v2, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$DateLabel;->width:I

    sub-int v24, v2, v3

    .line 1384
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int v16, v24, v2

    .line 1385
    move/from16 v0, v16

    if-lt v0, v13, :cond_21

    .line 1378
    :cond_20
    :goto_9
    add-int/lit8 v11, v11, -0x1

    goto :goto_8

    .line 1390
    :cond_21
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move/from16 v0, v16

    if-lt v0, v2, :cond_20

    .line 1394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    iget v3, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    int-to-float v3, v3

    move/from16 v0, v28

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    iget v3, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    int-to-float v3, v3

    move/from16 v0, v26

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1398
    iget-object v2, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$DateLabel;->label:Ljava/lang/String;

    move/from16 v0, v24

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int v4, v28, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_9

    .line 1401
    .end local v11    # "i":I
    .end local v12    # "label":Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$DateLabel;
    .end local v13    # "lastLeft":I
    .end local v16    # "left":I
    .end local v24    # "x":I
    .end local v26    # "ybottom":I
    .end local v28    # "ytop":I
    :cond_22
    return-void
.end method

.method finishPaths(IIIIILandroid/graphics/Path;IZZZZZZZLandroid/graphics/Path;)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "levelh"    # I
    .param p4, "startX"    # I
    .param p5, "y"    # I
    .param p6, "curLevelPath"    # Landroid/graphics/Path;
    .param p7, "lastX"    # I
    .param p8, "lastCharging"    # Z
    .param p9, "lastScreenOn"    # Z
    .param p10, "lastGpsOn"    # Z
    .param p11, "lastFlashlightOn"    # Z
    .param p12, "lastCameraOn"    # Z
    .param p13, "lastWifiRunning"    # Z
    .param p14, "lastCpuRunning"    # Z
    .param p15, "lastPath"    # Landroid/graphics/Path;

    .prologue
    .line 653
    if-eqz p6, :cond_2

    .line 654
    if-ltz p7, :cond_1

    if-ge p7, p1, :cond_1

    .line 655
    if-eqz p15, :cond_0

    .line 656
    int-to-float v1, p1

    int-to-float v2, p5

    move-object/from16 v0, p15

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 658
    :cond_0
    int-to-float v1, p1

    int-to-float v2, p5

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 660
    :cond_1
    int-to-float v1, p1

    iget v2, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 661
    int-to-float v1, p4

    iget v2, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 662
    invoke-virtual {p6}, Landroid/graphics/Path;->close()V

    .line 665
    :cond_2
    if-eqz p8, :cond_3

    .line 666
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 668
    :cond_3
    if-eqz p9, :cond_4

    .line 669
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 671
    :cond_4
    if-eqz p10, :cond_5

    .line 672
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 674
    :cond_5
    if-eqz p11, :cond_6

    .line 675
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 677
    :cond_6
    if-eqz p12, :cond_7

    .line 678
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 680
    :cond_7
    if-eqz p13, :cond_8

    .line 681
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 683
    :cond_8
    if-eqz p14, :cond_9

    .line 684
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 686
    :cond_9
    iget-boolean v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v1, :cond_a

    .line 687
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-virtual {v1, p1}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;->finish(I)V

    .line 689
    :cond_a
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1164
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1166
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getWidth()I

    move-result v1

    .line 1167
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getHeight()I

    move-result v0

    .line 1173
    .local v0, "height":I
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->drawChart(Landroid/graphics/Canvas;II)V

    .line 1174
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 634
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelStringWidth:I

    .line 635
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mMinPercentLabelString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mMinPercentLabelStringWidth:I

    .line 636
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDrainString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDrainStringWidth:I

    .line 637
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargeLabelStringWidth:I

    .line 638
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargeDurationString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargeDurationStringWidth:I

    .line 639
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    .line 640
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    .line 641
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    .line 642
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextDescent:I

    .line 643
    iget v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextDescent:I

    iget v2, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    sub-int v0, v1, v2

    .line 644
    .local v0, "headerTextHeight":I
    mul-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderHeight:I

    .line 645
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v1, p1}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getDefaultSize(II)I

    move-result v1

    iget v2, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChartMinHeight:I

    iget v3, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderHeight:I

    add-int/2addr v2, v3

    invoke-static {v2, p2}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getDefaultSize(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->setMeasuredDimension(II)V

    .line 647
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 72
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 703
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 707
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    move/from16 v0, p1

    if-ne v4, v0, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    move/from16 v0, p2

    if-ne v4, v0, :cond_1

    .line 1142
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    if-eqz v4, :cond_0

    .line 717
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    .line 718
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    .line 719
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBitmap:Landroid/graphics/Bitmap;

    .line 720
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCanvas:Landroid/graphics/Canvas;

    .line 722
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int v56, v4, v6

    .line 723
    .local v56, "textHeight":I
    mul-int/lit8 v4, v56, 0xa

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChartMinHeight:I

    add-int/2addr v4, v6

    move/from16 v0, p2

    if-le v0, v4, :cond_13

    .line 724
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    .line 725
    mul-int/lit8 v4, v56, 0xf

    move/from16 v0, p2

    if-le v0, v4, :cond_12

    .line 727
    div-int/lit8 v4, v56, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    .line 736
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    if-gtz v4, :cond_2

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    .line 738
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderHeight:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    .line 739
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelStringWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    .line 740
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    .line 741
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    sub-int v50, v4, v6

    .line 743
    .local v50, "levelWidth":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 744
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 745
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 746
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 747
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 748
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 749
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 750
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 751
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 752
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 753
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 754
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 756
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    add-int v38, v56, v4

    .line 758
    .local v38, "fullBarOffset":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v4, :cond_19

    .line 759
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    .line 760
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    add-int v4, v4, v38

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    .line 761
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    add-int v4, v4, v38

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    .line 762
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    add-int v4, v4, v38

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    .line 763
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v4, :cond_14

    move/from16 v4, v38

    :goto_2
    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    .line 764
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v4, :cond_15

    move/from16 v4, v38

    :goto_3
    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    .line 765
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHaveFlashlight:Z

    if-eqz v4, :cond_16

    move/from16 v4, v38

    :goto_4
    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    .line 766
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHaveCamera:Z

    if-eqz v4, :cond_17

    move/from16 v4, v38

    :goto_5
    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    .line 767
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v6, :cond_18

    .end local v38    # "fullBarOffset":I
    :goto_6
    add-int v4, v4, v38

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    .line 769
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v4, :cond_3

    .line 770
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    .line 782
    :cond_3
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 783
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 784
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 785
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 786
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 787
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 788
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 789
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 790
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 791
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 792
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 793
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 795
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 796
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 798
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v60, v0

    .line 799
    .local v60, "walltimeStart":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v66, v0

    cmp-long v4, v66, v60

    if-lez v4, :cond_1a

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v66, v0

    sub-long v58, v66, v60

    .line 801
    .local v58, "walltimeChange":J
    :goto_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v32, v0

    .line 802
    .local v32, "curWalltime":J
    const-wide/16 v44, 0x0

    .line 804
    .local v44, "lastRealtime":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    move/from16 v22, v0

    .line 805
    .local v22, "batLow":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatHigh:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    sub-int v21, v4, v6

    .line 807
    .local v21, "batChange":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    sub-int v4, p2, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    sub-int v7, v4, v6

    .line 808
    .local v7, "levelh":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    .line 810
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    .local v5, "x":I
    const/16 v65, 0x0

    .local v65, "y":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    .local v8, "startX":I
    const/4 v11, -0x1

    .local v11, "lastX":I
    const/4 v9, -0x1

    .line 811
    .local v9, "lastY":I
    const/16 v41, 0x0

    .line 812
    .local v41, "i":I
    const/4 v10, 0x0

    .line 813
    .local v10, "curLevelPath":Landroid/graphics/Path;
    const/16 v19, 0x0

    .line 814
    .local v19, "lastLinePath":Landroid/graphics/Path;
    const/4 v12, 0x0

    .local v12, "lastCharging":Z
    const/4 v13, 0x0

    .local v13, "lastScreenOn":Z
    const/4 v14, 0x0

    .line 815
    .local v14, "lastGpsOn":Z
    const/4 v15, 0x0

    .local v15, "lastFlashlightOn":Z
    const/16 v16, 0x0

    .line 816
    .local v16, "lastCameraOn":Z
    const/16 v17, 0x0

    .local v17, "lastWifiRunning":Z
    const/16 v48, 0x0

    .local v48, "lastWifiSupplRunning":Z
    const/16 v18, 0x0

    .line 817
    .local v18, "lastCpuRunning":Z
    const/16 v49, 0x0

    .line 818
    .local v49, "lastWifiSupplState":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mNumHist:I

    move/from16 v20, v0

    .line 819
    .local v20, "N":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    move-wide/from16 v66, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v68, v0

    cmp-long v4, v66, v68

    if-lez v4, :cond_35

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v4}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 820
    new-instance v52, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v52 .. v52}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .local v52, "rec":Landroid/os/BatteryStats$HistoryItem;
    move/from16 v64, v5

    .line 821
    .end local v5    # "x":I
    .end local v12    # "lastCharging":Z
    .end local v13    # "lastScreenOn":Z
    .end local v14    # "lastGpsOn":Z
    .end local v15    # "lastFlashlightOn":Z
    .end local v16    # "lastCameraOn":Z
    .local v64, "x":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v4

    if-eqz v4, :cond_34

    move/from16 v0, v41

    move/from16 v1, v20

    if-ge v0, v1, :cond_34

    .line 822
    invoke-virtual/range {v52 .. v52}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 823
    move-object/from16 v0, v52

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v66, v0

    sub-long v66, v66, v44

    add-long v32, v32, v66

    .line 824
    move-object/from16 v0, v52

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v44, v0

    .line 825
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    sub-long v66, v32, v60

    move/from16 v0, v50

    int-to-long v0, v0

    move-wide/from16 v68, v0

    mul-long v66, v66, v68

    div-long v66, v66, v58

    move-wide/from16 v0, v66

    long-to-int v6, v0

    add-int v5, v4, v6

    .line 826
    .end local v64    # "x":I
    .restart local v5    # "x":I
    if-gez v5, :cond_4

    .line 827
    const/4 v5, 0x0

    .line 839
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    move-object/from16 v0, v52

    iget-byte v6, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    sub-int v6, v6, v22

    add-int/lit8 v66, v7, -0x1

    mul-int v6, v6, v66

    div-int v6, v6, v21

    sub-int v65, v4, v6

    .line 841
    if-eq v11, v5, :cond_8

    .line 843
    move/from16 v0, v65

    if-eq v9, v0, :cond_8

    .line 846
    move-object/from16 v0, v52

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v57, v0

    .line 847
    .local v57, "value":B
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalLevel:I

    move/from16 v0, v57

    if-gt v0, v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object/from16 v51, v0

    .line 851
    .local v51, "path":Landroid/graphics/Path;
    :goto_a
    move-object/from16 v0, v51

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_1d

    .line 852
    if-eqz v19, :cond_5

    .line 853
    int-to-float v4, v5

    move/from16 v0, v65

    int-to-float v6, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 855
    :cond_5
    if-eqz v51, :cond_6

    .line 856
    int-to-float v4, v5

    move/from16 v0, v65

    int-to-float v6, v0

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 858
    :cond_6
    move-object/from16 v19, v51

    .line 863
    :cond_7
    :goto_b
    if-nez v10, :cond_1e

    .line 864
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 865
    int-to-float v4, v5

    move/from16 v0, v65

    int-to-float v6, v0

    invoke-virtual {v10, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 866
    move v8, v5

    .line 870
    :goto_c
    move v11, v5

    .line 871
    move/from16 v9, v65

    .line 875
    .end local v51    # "path":Landroid/graphics/Path;
    .end local v57    # "value":B
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v4, :cond_11

    .line 876
    move-object/from16 v0, v52

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x80000

    and-int/2addr v4, v6

    if-eqz v4, :cond_1f

    const/16 v30, 0x1

    .line 878
    .local v30, "charging":Z
    :goto_d
    move/from16 v0, v30

    if-eq v0, v12, :cond_9

    .line 879
    if-eqz v30, :cond_20

    .line 880
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    move/from16 v66, v0

    sub-int v66, p2, v66

    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 884
    :goto_e
    move/from16 v12, v30

    .line 887
    :cond_9
    move-object/from16 v0, v52

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x100000

    and-int/2addr v4, v6

    if-eqz v4, :cond_21

    const/16 v53, 0x1

    .line 889
    .local v53, "screenOn":Z
    :goto_f
    move/from16 v0, v53

    if-eq v0, v13, :cond_a

    .line 890
    if-eqz v53, :cond_22

    .line 891
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    move/from16 v66, v0

    sub-int v66, p2, v66

    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 895
    :goto_10
    move/from16 v13, v53

    .line 898
    :cond_a
    move-object/from16 v0, v52

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x20000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_23

    const/16 v40, 0x1

    .line 900
    .local v40, "gpsOn":Z
    :goto_11
    move/from16 v0, v40

    if-eq v0, v14, :cond_b

    .line 901
    if-eqz v40, :cond_24

    .line 902
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move/from16 v66, v0

    sub-int v66, p2, v66

    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 906
    :goto_12
    move/from16 v14, v40

    .line 909
    :cond_b
    move-object/from16 v0, v52

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x8000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_25

    const/16 v35, 0x1

    .line 911
    .local v35, "flashlightOn":Z
    :goto_13
    move/from16 v0, v35

    if-eq v0, v15, :cond_c

    .line 912
    if-eqz v35, :cond_26

    .line 913
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    move/from16 v66, v0

    sub-int v66, p2, v66

    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 917
    :goto_14
    move/from16 v15, v35

    .line 920
    :cond_c
    move-object/from16 v0, v52

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x400000

    and-int/2addr v4, v6

    if-eqz v4, :cond_27

    const/16 v29, 0x1

    .line 922
    .local v29, "cameraOn":Z
    :goto_15
    move/from16 v0, v29

    move/from16 v1, v16

    if-eq v0, v1, :cond_d

    .line 923
    if-eqz v29, :cond_28

    .line 924
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    move/from16 v66, v0

    sub-int v66, p2, v66

    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 928
    :goto_16
    move/from16 v16, v29

    .line 931
    :cond_d
    move-object/from16 v0, v52

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/lit8 v4, v4, 0xf

    shr-int/lit8 v63, v4, 0x0

    .line 935
    .local v63, "wifiSupplState":I
    move/from16 v0, v49

    move/from16 v1, v63

    if-eq v0, v1, :cond_29

    .line 936
    move/from16 v49, v63

    .line 937
    packed-switch v63, :pswitch_data_0

    .line 947
    :pswitch_0
    const/16 v48, 0x1

    move/from16 v62, v48

    .line 953
    :goto_17
    move-object/from16 v0, v52

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x18010000

    and-int/2addr v4, v6

    if-eqz v4, :cond_e

    .line 956
    const/16 v62, 0x1

    .line 958
    :cond_e
    move/from16 v0, v62

    move/from16 v1, v17

    if-eq v0, v1, :cond_f

    .line 959
    if-eqz v62, :cond_2a

    .line 960
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move/from16 v66, v0

    sub-int v66, p2, v66

    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 964
    :goto_18
    move/from16 v17, v62

    .line 967
    :cond_f
    move-object/from16 v0, v52

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, -0x80000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_2b

    const/16 v31, 0x1

    .line 969
    .local v31, "cpuRunning":Z
    :goto_19
    move/from16 v0, v31

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    .line 970
    if-eqz v31, :cond_2c

    .line 971
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    move/from16 v66, v0

    sub-int v66, p2, v66

    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 975
    :goto_1a
    move/from16 v18, v31

    .line 978
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v4, :cond_11

    .line 980
    move-object/from16 v0, v52

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v4, v4, 0x1c0

    shr-int/lit8 v4, v4, 0x6

    const/4 v6, 0x3

    if-ne v4, v6, :cond_2d

    .line 983
    const/16 v23, 0x0

    .line 991
    .local v23, "bin":I
    :goto_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;

    move/from16 v0, v23

    invoke-virtual {v4, v5, v0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;->addTick(II)V

    .line 1023
    .end local v23    # "bin":I
    .end local v29    # "cameraOn":Z
    .end local v30    # "charging":Z
    .end local v31    # "cpuRunning":Z
    .end local v35    # "flashlightOn":Z
    .end local v40    # "gpsOn":Z
    .end local v53    # "screenOn":Z
    .end local v63    # "wifiSupplState":I
    :cond_11
    :goto_1c
    add-int/lit8 v41, v41, 0x1

    move/from16 v64, v5

    .end local v5    # "x":I
    .restart local v64    # "x":I
    goto/16 :goto_9

    .line 730
    .end local v7    # "levelh":I
    .end local v8    # "startX":I
    .end local v9    # "lastY":I
    .end local v10    # "curLevelPath":Landroid/graphics/Path;
    .end local v11    # "lastX":I
    .end local v17    # "lastWifiRunning":Z
    .end local v18    # "lastCpuRunning":Z
    .end local v19    # "lastLinePath":Landroid/graphics/Path;
    .end local v20    # "N":I
    .end local v21    # "batChange":I
    .end local v22    # "batLow":I
    .end local v32    # "curWalltime":J
    .end local v41    # "i":I
    .end local v44    # "lastRealtime":J
    .end local v48    # "lastWifiSupplRunning":Z
    .end local v49    # "lastWifiSupplState":I
    .end local v50    # "levelWidth":I
    .end local v52    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local v58    # "walltimeChange":J
    .end local v60    # "walltimeStart":J
    .end local v64    # "x":I
    .end local v65    # "y":I
    :cond_12
    div-int/lit8 v4, v56, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    goto/16 :goto_1

    .line 733
    :cond_13
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    .line 734
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    goto/16 :goto_1

    .line 763
    .restart local v38    # "fullBarOffset":I
    .restart local v50    # "levelWidth":I
    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 764
    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 765
    :cond_16
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 766
    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 767
    :cond_18
    const/16 v38, 0x0

    goto/16 :goto_6

    .line 773
    :cond_19
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    .line 776
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v4, v4, 0x4

    add-int v4, v4, v38

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    .line 777
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v4, :cond_3

    .line 778
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    goto/16 :goto_7

    .line 799
    .end local v38    # "fullBarOffset":I
    .restart local v60    # "walltimeStart":J
    :cond_1a
    const-wide/16 v58, 0x1

    goto/16 :goto_8

    .line 848
    .restart local v5    # "x":I
    .restart local v7    # "levelh":I
    .restart local v8    # "startX":I
    .restart local v9    # "lastY":I
    .restart local v10    # "curLevelPath":Landroid/graphics/Path;
    .restart local v11    # "lastX":I
    .restart local v17    # "lastWifiRunning":Z
    .restart local v18    # "lastCpuRunning":Z
    .restart local v19    # "lastLinePath":Landroid/graphics/Path;
    .restart local v20    # "N":I
    .restart local v21    # "batChange":I
    .restart local v22    # "batLow":I
    .restart local v32    # "curWalltime":J
    .restart local v41    # "i":I
    .restart local v44    # "lastRealtime":J
    .restart local v48    # "lastWifiSupplRunning":Z
    .restart local v49    # "lastWifiSupplState":I
    .restart local v52    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v57    # "value":B
    .restart local v58    # "walltimeChange":J
    .restart local v65    # "y":I
    :cond_1b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryWarnLevel:I

    move/from16 v0, v57

    if-gt v0, v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object/from16 v51, v0

    .restart local v51    # "path":Landroid/graphics/Path;
    goto/16 :goto_a

    .line 849
    .end local v51    # "path":Landroid/graphics/Path;
    :cond_1c
    const/16 v51, 0x0

    .restart local v51    # "path":Landroid/graphics/Path;
    goto/16 :goto_a

    .line 859
    :cond_1d
    if-eqz v51, :cond_7

    .line 860
    int-to-float v4, v5

    move/from16 v0, v65

    int-to-float v6, v0

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_b

    .line 868
    :cond_1e
    int-to-float v4, v5

    move/from16 v0, v65

    int-to-float v6, v0

    invoke-virtual {v10, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_c

    .line 876
    .end local v51    # "path":Landroid/graphics/Path;
    .end local v57    # "value":B
    :cond_1f
    const/16 v30, 0x0

    goto/16 :goto_d

    .line 882
    .restart local v30    # "charging":Z
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    move/from16 v66, v0

    sub-int v66, p2, v66

    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_e

    .line 887
    :cond_21
    const/16 v53, 0x0

    goto/16 :goto_f

    .line 893
    .restart local v53    # "screenOn":Z
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    move/from16 v66, v0

    sub-int v66, p2, v66

    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_10

    .line 898
    :cond_23
    const/16 v40, 0x0

    goto/16 :goto_11

    .line 904
    .restart local v40    # "gpsOn":Z
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move/from16 v66, v0

    sub-int v66, p2, v66

    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_12

    .line 909
    :cond_25
    const/16 v35, 0x0

    goto/16 :goto_13

    .line 915
    .restart local v35    # "flashlightOn":Z
    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    move/from16 v66, v0

    sub-int v66, p2, v66

    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_14

    .line 920
    :cond_27
    const/16 v29, 0x0

    goto/16 :goto_15

    .line 926
    .restart local v29    # "cameraOn":Z
    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    move/from16 v66, v0

    sub-int v66, p2, v66

    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_16

    .line 944
    .restart local v63    # "wifiSupplState":I
    :pswitch_1
    const/16 v48, 0x0

    move/from16 v62, v48

    .line 945
    .local v62, "wifiRunning":I
    goto/16 :goto_17

    .line 951
    .end local v62    # "wifiRunning":I
    :cond_29
    move/from16 v62, v48

    .local v62, "wifiRunning":Z
    goto/16 :goto_17

    .line 962
    .end local v62    # "wifiRunning":Z
    :cond_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move/from16 v66, v0

    sub-int v66, p2, v66

    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_18

    .line 967
    :cond_2b
    const/16 v31, 0x0

    goto/16 :goto_19

    .line 973
    .restart local v31    # "cpuRunning":Z
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    move/from16 v66, v0

    sub-int v66, p2, v66

    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_1a

    .line 984
    :cond_2d
    move-object/from16 v0, v52

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x200000

    and-int/2addr v4, v6

    if-eqz v4, :cond_2e

    .line 985
    const/16 v23, 0x1

    .restart local v23    # "bin":I
    goto/16 :goto_1b

    .line 987
    .end local v23    # "bin":I
    :cond_2e
    move-object/from16 v0, v52

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit8 v4, v4, 0x38

    shr-int/lit8 v23, v4, 0x3

    .line 989
    .restart local v23    # "bin":I
    add-int/lit8 v23, v23, 0x2

    goto/16 :goto_1b

    .line 996
    .end local v5    # "x":I
    .end local v23    # "bin":I
    .end local v29    # "cameraOn":Z
    .end local v30    # "charging":Z
    .end local v31    # "cpuRunning":Z
    .end local v35    # "flashlightOn":Z
    .end local v40    # "gpsOn":Z
    .end local v53    # "screenOn":Z
    .end local v63    # "wifiSupplState":I
    .restart local v64    # "x":I
    :cond_2f
    move-wide/from16 v46, v32

    .line 997
    .local v46, "lastWalltime":J
    move-object/from16 v0, v52

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x5

    if-eq v4, v6, :cond_30

    move-object/from16 v0, v52

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x7

    if-ne v4, v6, :cond_31

    .line 999
    :cond_30
    move-object/from16 v0, v52

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v66, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v68, v0

    cmp-long v4, v66, v68

    if-ltz v4, :cond_33

    .line 1000
    move-object/from16 v0, v52

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v32, v0

    .line 1004
    :goto_1d
    move-object/from16 v0, v52

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v44, v0

    .line 1007
    :cond_31
    move-object/from16 v0, v52

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x6

    if-eq v4, v6, :cond_47

    move-object/from16 v0, v52

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x5

    if-ne v4, v6, :cond_32

    sub-long v66, v46, v32

    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->abs(J)J

    move-result-wide v66

    const-wide/32 v68, 0x36ee80

    cmp-long v4, v66, v68

    if-lez v4, :cond_47

    .line 1010
    :cond_32
    if-eqz v10, :cond_47

    .line 1011
    add-int/lit8 v5, v64, 0x1

    move-object/from16 v4, p0

    move/from16 v6, p2

    invoke-virtual/range {v4 .. v19}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZZZLandroid/graphics/Path;)V

    .line 1014
    const/4 v9, -0x1

    move v11, v9

    .line 1015
    const/4 v10, 0x0

    .line 1016
    const/16 v19, 0x0

    .line 1017
    const/16 v18, 0x0

    move/from16 v16, v18

    .local v16, "lastCameraOn":I
    move/from16 v15, v18

    .local v15, "lastFlashlightOn":I
    move/from16 v14, v18

    .local v14, "lastGpsOn":I
    move/from16 v13, v18

    .local v13, "lastScreenOn":I
    move/from16 v12, v18

    .local v12, "lastCharging":I
    move/from16 v5, v64

    .end local v64    # "x":I
    .restart local v5    # "x":I
    goto/16 :goto_1c

    .line 1002
    .end local v5    # "x":I
    .end local v12    # "lastCharging":I
    .end local v13    # "lastScreenOn":I
    .end local v14    # "lastGpsOn":I
    .end local v15    # "lastFlashlightOn":I
    .end local v16    # "lastCameraOn":I
    .restart local v64    # "x":I
    :cond_33
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v66, v0

    move-object/from16 v0, v52

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v68, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v70, v0

    sub-long v68, v68, v70

    add-long v32, v66, v68

    goto :goto_1d

    .line 1025
    .end local v46    # "lastWalltime":J
    :cond_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v4}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    move/from16 v5, v64

    .line 1028
    .end local v52    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local v64    # "x":I
    .restart local v5    # "x":I
    :cond_35
    if-ltz v9, :cond_36

    if-gez v11, :cond_43

    .line 1030
    :cond_36
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move v5, v11

    .line 1031
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryLevel:I

    sub-int v6, v6, v22

    add-int/lit8 v66, v7, -0x1

    mul-int v6, v6, v66

    div-int v6, v6, v21

    sub-int v9, v4, v6

    move/from16 v65, v9

    .line 1033
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryLevel:I

    int-to-byte v0, v4

    move/from16 v57, v0

    .line 1034
    .restart local v57    # "value":B
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalLevel:I

    move/from16 v0, v57

    if-gt v0, v4, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object/from16 v51, v0

    .line 1037
    .restart local v51    # "path":Landroid/graphics/Path;
    :goto_1e
    if-eqz v51, :cond_37

    .line 1038
    int-to-float v4, v5

    move/from16 v0, v65

    int-to-float v6, v0

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1039
    move-object/from16 v19, v51

    .line 1041
    :cond_37
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move/from16 v0, v65

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 1043
    move/from16 v5, p1

    .end local v51    # "path":Landroid/graphics/Path;
    .end local v57    # "value":B
    :cond_38
    :goto_1f
    move-object/from16 v4, p0

    move/from16 v6, p2

    .line 1052
    invoke-virtual/range {v4 .. v19}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZZZLandroid/graphics/Path;)V

    .line 1056
    move/from16 v0, p1

    if-ge v5, v0, :cond_39

    .line 1059
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    int-to-float v6, v5

    int-to-float v0, v9

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1060
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    rsub-int/lit8 v6, v22, 0x64

    add-int/lit8 v66, v7, -0x1

    mul-int v6, v6, v66

    div-int v6, v6, v21

    sub-int v39, v4, v6

    .line 1061
    .local v39, "fullY":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    rsub-int/lit8 v6, v22, 0x0

    add-int/lit8 v66, v7, -0x1

    mul-int v6, v6, v66

    div-int v6, v6, v21

    sub-int v34, v4, v6

    .line 1062
    .local v34, "emptyY":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDischarging:Z

    if-eqz v4, :cond_44

    .line 1063
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    int-to-float v6, v6

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1068
    :goto_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 1072
    .end local v34    # "emptyY":I
    .end local v39    # "fullY":I
    :cond_39
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v66, v0

    const-wide/16 v68, 0x0

    cmp-long v4, v66, v68

    if-lez v4, :cond_40

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v66, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v68, v0

    cmp-long v4, v66, v68

    if-lez v4, :cond_40

    .line 1074
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->is24Hour()Z

    move-result v42

    .line 1075
    .local v42, "is24hr":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v28

    .line 1076
    .local v28, "calStart":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v66, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v66

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1077
    const/16 v4, 0xe

    const/4 v6, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1078
    const/16 v4, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1079
    const/16 v4, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1080
    invoke-virtual/range {v28 .. v28}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v54

    .line 1081
    .local v54, "startRoundTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v66, v0

    cmp-long v4, v54, v66

    if-gez v4, :cond_3a

    .line 1082
    const/16 v4, 0xb

    const/16 v6, 0xb

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1083
    invoke-virtual/range {v28 .. v28}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v54

    .line 1085
    :cond_3a
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v24

    .line 1086
    .local v24, "calEnd":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v66, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v66

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1087
    const/16 v4, 0xe

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1088
    const/16 v4, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1089
    const/16 v4, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1090
    invoke-virtual/range {v24 .. v24}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v36

    .line 1091
    .local v36, "endRoundTime":J
    cmp-long v4, v54, v36

    if-gez v4, :cond_3c

    .line 1092
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v42

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->addTimeLabel(Ljava/util/Calendar;IIZ)V

    .line 1093
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v25

    .line 1094
    .local v25, "calMid":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v66, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v68, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v70, v0

    sub-long v68, v68, v70

    const-wide/16 v70, 0x2

    div-long v68, v68, v70

    add-long v66, v66, v68

    move-object/from16 v0, v25

    move-wide/from16 v1, v66

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1095
    const/16 v4, 0xe

    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1096
    const/16 v4, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1097
    const/16 v4, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1098
    invoke-virtual/range {v25 .. v25}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    .line 1099
    .local v26, "calMidMillis":J
    cmp-long v4, v26, v54

    if-lez v4, :cond_3b

    cmp-long v4, v26, v36

    if-gez v4, :cond_3b

    .line 1100
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v42

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->addTimeLabel(Ljava/util/Calendar;IIZ)V

    .line 1102
    :cond_3b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v42

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->addTimeLabel(Ljava/util/Calendar;IIZ)V

    .line 1106
    .end local v25    # "calMid":Ljava/util/Calendar;
    .end local v26    # "calMidMillis":J
    :cond_3c
    const/4 v4, 0x6

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x6

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v4, v6, :cond_3d

    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-eq v4, v6, :cond_40

    .line 1108
    :cond_3d
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->isDayFirst()Z

    move-result v43

    .line 1109
    .local v43, "isDayFirst":Z
    const/16 v4, 0xb

    const/4 v6, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1110
    invoke-virtual/range {v28 .. v28}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v54

    .line 1111
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v66, v0

    cmp-long v4, v54, v66

    if-gez v4, :cond_3e

    .line 1112
    const/4 v4, 0x6

    const/4 v6, 0x6

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1113
    invoke-virtual/range {v28 .. v28}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v54

    .line 1115
    :cond_3e
    const/16 v4, 0xb

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1116
    invoke-virtual/range {v24 .. v24}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v36

    .line 1117
    cmp-long v4, v54, v36

    if-gez v4, :cond_3f

    .line 1118
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v43

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->addDateLabel(Ljava/util/Calendar;IIZ)V

    .line 1119
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v25

    .line 1120
    .restart local v25    # "calMid":Ljava/util/Calendar;
    sub-long v66, v36, v54

    const-wide/16 v68, 0x2

    div-long v66, v66, v68

    add-long v66, v66, v54

    move-object/from16 v0, v25

    move-wide/from16 v1, v66

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1121
    const/16 v4, 0xb

    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1122
    invoke-virtual/range {v25 .. v25}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    .line 1123
    .restart local v26    # "calMidMillis":J
    cmp-long v4, v26, v54

    if-lez v4, :cond_3f

    cmp-long v4, v26, v36

    if-gez v4, :cond_3f

    .line 1124
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v43

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->addDateLabel(Ljava/util/Calendar;IIZ)V

    .line 1127
    .end local v25    # "calMid":Ljava/util/Calendar;
    .end local v26    # "calMidMillis":J
    :cond_3f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v43

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->addDateLabel(Ljava/util/Calendar;IIZ)V

    .line 1131
    .end local v24    # "calEnd":Ljava/util/Calendar;
    .end local v28    # "calStart":Ljava/util/Calendar;
    .end local v36    # "endRoundTime":J
    .end local v42    # "is24hr":Z
    .end local v43    # "isDayFirst":Z
    .end local v54    # "startRoundTime":J
    :cond_40
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x2

    if-ge v4, v6, :cond_46

    .line 1134
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v66, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v68, v0

    sub-long v66, v66, v68

    const-wide/16 v68, 0x0

    cmp-long v6, v66, v68

    if-lez v6, :cond_45

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v66, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v68, v0

    sub-long v66, v66, v68

    :goto_21
    move-wide/from16 v0, v66

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    .line 1137
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    goto/16 :goto_0

    .line 1035
    .restart local v57    # "value":B
    :cond_41
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryWarnLevel:I

    move/from16 v0, v57

    if-gt v0, v4, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object/from16 v51, v0

    .restart local v51    # "path":Landroid/graphics/Path;
    goto/16 :goto_1e

    .line 1036
    .end local v51    # "path":Landroid/graphics/Path;
    :cond_42
    const/16 v51, 0x0

    .restart local v51    # "path":Landroid/graphics/Path;
    goto/16 :goto_1e

    .line 1046
    .end local v51    # "path":Landroid/graphics/Path;
    .end local v57    # "value":B
    :cond_43
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    move-wide/from16 v66, v0

    sub-long v66, v66, v60

    move/from16 v0, v50

    int-to-long v0, v0

    move-wide/from16 v68, v0

    mul-long v66, v66, v68

    div-long v66, v66, v58

    move-wide/from16 v0, v66

    long-to-int v6, v0

    add-int v5, v4, v6

    .line 1047
    if-gez v5, :cond_38

    .line 1048
    const/4 v5, 0x0

    goto/16 :goto_1f

    .line 1065
    .restart local v34    # "emptyY":I
    .restart local v39    # "fullY":I
    :cond_44
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    int-to-float v6, v6

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    int-to-float v6, v6

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_20

    .line 1134
    .end local v34    # "emptyY":I
    .end local v39    # "fullY":I
    :cond_45
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v66, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v68, v0

    sub-long v66, v66, v68

    goto/16 :goto_21

    .line 1139
    :cond_46
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    .line 1140
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    goto/16 :goto_0

    .end local v5    # "x":I
    .restart local v46    # "lastWalltime":J
    .restart local v52    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v64    # "x":I
    :cond_47
    move/from16 v5, v64

    .end local v64    # "x":I
    .restart local v5    # "x":I
    goto/16 :goto_1c

    .line 937
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method setStats(Landroid/os/BatteryStats;Landroid/content/Intent;)V
    .locals 38
    .param p1, "stats"    # Landroid/os/BatteryStats;
    .param p2, "broadcast"    # Landroid/content/Intent;

    .prologue
    .line 491
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    .line 492
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    .line 496
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    mul-long v12, v32, v34

    .line 498
    .local v12, "elapsedRealtimeUs":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v29, v0

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v12, v13, v1}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v30

    .line 500
    .local v30, "uSecTime":J
    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStatsPeriod:J

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f0c06eb

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingLabel:Ljava/lang/String;

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f0c06ec

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnLabel:Ljava/lang/String;

    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f0c06ed

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnLabel:Ljava/lang/String;

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f0c06ee

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnLabel:Ljava/lang/String;

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f0c06ef

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnLabel:Ljava/lang/String;

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f0c06f0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningLabel:Ljava/lang/String;

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f0c06f1

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningLabel:Ljava/lang/String;

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f0c06f2

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalLabel:Ljava/lang/String;

    .line 510
    const/16 v29, 0x64

    invoke-static/range {v29 .. v29}, Lcom/android/exsettings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelString:Ljava/lang/String;

    .line 511
    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Lcom/android/exsettings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mMinPercentLabelString:Ljava/lang/String;

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/exsettings/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryLevel:I

    .line 514
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryLevel:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/exsettings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v6

    .line 515
    .local v6, "batteryPercentString":Ljava/lang/String;
    const-wide/16 v24, 0x0

    .line 516
    .local v24, "remainingTimeUs":J
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDischarging:Z

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v29, v0

    const-string v32, "plugged"

    const/16 v33, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v29

    if-nez v29, :cond_9

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v12, v13}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v10

    .line 519
    .local v10, "drainTime":J
    const-wide/16 v32, 0x0

    cmp-long v29, v10, v32

    if-lez v29, :cond_8

    .line 520
    move-wide/from16 v24, v10

    .line 521
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const-wide/16 v32, 0x3e8

    div-long v32, v10, v32

    move-object/from16 v0, v29

    move-wide/from16 v1, v32

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v28

    .line 523
    .local v28, "timeString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v32, 0x7f0c06e0

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v6, v33, v34

    const/16 v34, 0x1

    aput-object v28, v33, v34

    move-object/from16 v0, v29

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    .line 557
    .end local v10    # "drainTime":J
    .end local v28    # "timeString":Ljava/lang/String;
    :goto_0
    const-string v29, ""

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDrainString:Ljava/lang/String;

    .line 558
    const-string v29, ""

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargeDurationString:Ljava/lang/String;

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 561
    const/16 v21, 0x0

    .line 562
    .local v21, "pos":I
    const/4 v14, 0x0

    .line 563
    .local v14, "lastInteresting":I
    const/4 v15, -0x1

    .line 564
    .local v15, "lastLevel":B
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    .line 565
    const/16 v29, 0x64

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatHigh:I

    .line 566
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 567
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    .line 568
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    .line 569
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    .line 570
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    .line 571
    const-wide/16 v18, 0x0

    .line 572
    .local v18, "lastWallTime":J
    const-wide/16 v16, 0x0

    .line 573
    .local v16, "lastRealtime":J
    const/4 v4, 0x0

    .line 574
    .local v4, "aggrStates":I
    const/4 v5, 0x0

    .line 575
    .local v5, "aggrStates2":I
    const/4 v7, 0x1

    .line 576
    .local v7, "first":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v29

    if-eqz v29, :cond_e

    .line 577
    new-instance v22, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v22 .. v22}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 578
    .local v22, "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_0
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v29

    if-eqz v29, :cond_e

    .line 579
    add-int/lit8 v21, v21, 0x1

    .line 580
    if-eqz v7, :cond_1

    .line 581
    const/4 v7, 0x0

    .line 582
    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    .line 584
    :cond_1
    move-object/from16 v0, v22

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v29, v0

    const/16 v32, 0x5

    move/from16 v0, v29

    move/from16 v1, v32

    if-eq v0, v1, :cond_2

    move-object/from16 v0, v22

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v29, v0

    const/16 v32, 0x7

    move/from16 v0, v29

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    .line 594
    :cond_2
    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v32, v0

    const-wide v34, 0x39ef8b000L

    add-long v34, v34, v18

    cmp-long v29, v32, v34

    if-gtz v29, :cond_3

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v34, v0

    const-wide/32 v36, 0x493e0

    add-long v34, v34, v36

    cmp-long v29, v32, v34

    if-gez v29, :cond_4

    .line 596
    :cond_3
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 598
    :cond_4
    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v18, v0

    .line 599
    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v16, v0

    .line 600
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v29, v32, v34

    if-nez v29, :cond_5

    .line 601
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v32, v0

    sub-long v32, v16, v32

    sub-long v32, v18, v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 604
    :cond_5
    invoke-virtual/range {v22 .. v22}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v29

    if-eqz v29, :cond_0

    .line 605
    move-object/from16 v0, v22

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v29, v0

    move/from16 v0, v29

    if-ne v0, v15, :cond_6

    const/16 v29, 0x1

    move/from16 v0, v21

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    .line 606
    :cond_6
    move-object/from16 v0, v22

    iget-byte v15, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 608
    :cond_7
    move/from16 v14, v21

    .line 609
    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHistDataEnd:J

    .line 610
    move-object/from16 v0, v22

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move/from16 v29, v0

    or-int v4, v4, v29

    .line 611
    move-object/from16 v0, v22

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move/from16 v29, v0

    or-int v5, v5, v29

    goto/16 :goto_1

    .line 526
    .end local v4    # "aggrStates":I
    .end local v5    # "aggrStates2":I
    .end local v7    # "first":Z
    .end local v14    # "lastInteresting":I
    .end local v15    # "lastLevel":B
    .end local v16    # "lastRealtime":J
    .end local v18    # "lastWallTime":J
    .end local v21    # "pos":I
    .end local v22    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v10    # "drainTime":J
    :cond_8
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    goto/16 :goto_0

    .line 529
    .end local v10    # "drainTime":J
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v12, v13}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v8

    .line 530
    .local v8, "chargeTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v32, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/exsettings/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v27

    .line 532
    .local v27, "statusLabel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v29, v0

    const-string v32, "status"

    const/16 v33, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    .line 534
    .local v26, "status":I
    const-wide/16 v32, 0x0

    cmp-long v29, v8, v32

    if-lez v29, :cond_d

    const/16 v29, 0x5

    move/from16 v0, v26

    move/from16 v1, v29

    if-eq v0, v1, :cond_d

    .line 535
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDischarging:Z

    .line 536
    move-wide/from16 v24, v8

    .line 537
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const-wide/16 v32, 0x3e8

    div-long v32, v8, v32

    move-object/from16 v0, v29

    move-wide/from16 v1, v32

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v28

    .line 539
    .restart local v28    # "timeString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v29, v0

    const-string v32, "plugged"

    const/16 v33, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 541
    .local v20, "plugType":I
    const/16 v29, 0x1

    move/from16 v0, v20

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    .line 542
    const v23, 0x7f0c06e3

    .line 550
    .local v23, "resId":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v6, v32, v33

    const/16 v33, 0x1

    aput-object v28, v32, v33

    move-object/from16 v0, v29

    move/from16 v1, v23

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    goto/16 :goto_0

    .line 543
    .end local v23    # "resId":I
    :cond_a
    const/16 v29, 0x2

    move/from16 v0, v20

    move/from16 v1, v29

    if-ne v0, v1, :cond_b

    .line 544
    const v23, 0x7f0c06e4

    .restart local v23    # "resId":I
    goto :goto_2

    .line 545
    .end local v23    # "resId":I
    :cond_b
    const/16 v29, 0x4

    move/from16 v0, v20

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    .line 546
    const v23, 0x7f0c06e5

    .restart local v23    # "resId":I
    goto :goto_2

    .line 548
    .end local v23    # "resId":I
    :cond_c
    const v23, 0x7f0c06e2

    .restart local v23    # "resId":I
    goto :goto_2

    .line 553
    .end local v20    # "plugType":I
    .end local v23    # "resId":I
    .end local v28    # "timeString":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v32, 0x7f0c06e1

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v6, v33, v34

    const/16 v34, 0x1

    aput-object v27, v33, v34

    move-object/from16 v0, v29

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    goto/16 :goto_0

    .line 615
    .end local v8    # "chargeTime":J
    .end local v26    # "status":I
    .end local v27    # "statusLabel":Ljava/lang/String;
    .restart local v4    # "aggrStates":I
    .restart local v5    # "aggrStates2":I
    .restart local v7    # "first":Z
    .restart local v14    # "lastInteresting":I
    .restart local v15    # "lastLevel":B
    .restart local v16    # "lastRealtime":J
    .restart local v18    # "lastWallTime":J
    .restart local v21    # "pos":I
    :cond_e
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHistDataEnd:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x3e8

    div-long v34, v24, v34

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    .line 616
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHistDataEnd:J

    move-wide/from16 v32, v0

    add-long v32, v32, v18

    sub-long v32, v32, v16

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    .line 617
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x3e8

    div-long v34, v24, v34

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    .line 618
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mNumHist:I

    .line 619
    const/high16 v29, 0x20000000

    and-int v29, v29, v4

    if-eqz v29, :cond_12

    const/16 v29, 0x1

    :goto_3
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    .line 620
    const/high16 v29, 0x8000000

    and-int v29, v29, v5

    if-eqz v29, :cond_13

    const/16 v29, 0x1

    :goto_4
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHaveFlashlight:Z

    .line 621
    const/high16 v29, 0x400000

    and-int v29, v29, v5

    if-eqz v29, :cond_14

    const/16 v29, 0x1

    :goto_5
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHaveCamera:Z

    .line 622
    const/high16 v29, 0x20000000

    and-int v29, v29, v5

    if-nez v29, :cond_f

    const/high16 v29, 0x18010000

    and-int v29, v29, v4

    if-eqz v29, :cond_15

    :cond_f
    const/16 v29, 0x1

    :goto_6
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    .line 626
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/exsettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v29

    if-nez v29, :cond_10

    .line 627
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    .line 629
    :cond_10
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v34, v0

    cmp-long v29, v32, v34

    if-gtz v29, :cond_11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x1

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    .line 630
    :cond_11
    return-void

    .line 619
    :cond_12
    const/16 v29, 0x0

    goto :goto_3

    .line 620
    :cond_13
    const/16 v29, 0x0

    goto :goto_4

    .line 621
    :cond_14
    const/16 v29, 0x0

    goto :goto_5

    .line 622
    :cond_15
    const/16 v29, 0x0

    goto :goto_6
.end method
