.class public Lcom/android/exsettings/widget/ChartDataUsageView;
.super Lcom/android/exsettings/widget/ChartView;
.source "ChartDataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/widget/ChartDataUsageView$DataAxis;,
        Lcom/android/exsettings/widget/ChartDataUsageView$TimeAxis;,
        Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;
    }
.end annotation


# instance fields
.field private mDetailSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

.field private mGrid:Lcom/android/exsettings/widget/ChartGridView;

.field private mHandler:Landroid/os/Handler;

.field private mHistory:Landroid/net/NetworkStatsHistory;

.field private mHorizListener:Lcom/android/exsettings/widget/ChartSweepView$OnSweepListener;

.field private mInspectEnd:J

.field private mInspectStart:J

.field private mListener:Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;

.field private mSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

.field private mSweepLeft:Lcom/android/exsettings/widget/ChartSweepView;

.field private mSweepLimit:Lcom/android/exsettings/widget/ChartSweepView;

.field private mSweepRight:Lcom/android/exsettings/widget/ChartSweepView;

.field private mSweepWarning:Lcom/android/exsettings/widget/ChartSweepView;

.field private mVertListener:Lcom/android/exsettings/widget/ChartSweepView$OnSweepListener;

.field private mVertMax:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/exsettings/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exsettings/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exsettings/widget/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 307
    new-instance v0, Lcom/android/exsettings/widget/ChartDataUsageView$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/widget/ChartDataUsageView$2;-><init>(Lcom/android/exsettings/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mHorizListener:Lcom/android/exsettings/widget/ChartSweepView$OnSweepListener;

    .line 335
    new-instance v0, Lcom/android/exsettings/widget/ChartDataUsageView$3;

    invoke-direct {v0, p0}, Lcom/android/exsettings/widget/ChartDataUsageView$3;-><init>(Lcom/android/exsettings/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mVertListener:Lcom/android/exsettings/widget/ChartSweepView$OnSweepListener;

    .line 98
    new-instance v0, Lcom/android/exsettings/widget/ChartDataUsageView$TimeAxis;

    invoke-direct {v0}, Lcom/android/exsettings/widget/ChartDataUsageView$TimeAxis;-><init>()V

    new-instance v1, Lcom/android/exsettings/widget/InvertedChartAxis;

    new-instance v2, Lcom/android/exsettings/widget/ChartDataUsageView$DataAxis;

    invoke-direct {v2}, Lcom/android/exsettings/widget/ChartDataUsageView$DataAxis;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/exsettings/widget/InvertedChartAxis;-><init>(Lcom/android/exsettings/widget/ChartAxis;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/exsettings/widget/ChartDataUsageView;->init(Lcom/android/exsettings/widget/ChartAxis;Lcom/android/exsettings/widget/ChartAxis;)V

    .line 100
    new-instance v0, Lcom/android/exsettings/widget/ChartDataUsageView$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/widget/ChartDataUsageView$1;-><init>(Lcom/android/exsettings/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/widget/ChartDataUsageView;Lcom/android/exsettings/widget/ChartSweepView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/widget/ChartDataUsageView;
    .param p1, "x1"    # Lcom/android/exsettings/widget/ChartSweepView;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/exsettings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/exsettings/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/exsettings/widget/ChartDataUsageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/widget/ChartDataUsageView;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/exsettings/widget/ChartDataUsageView;->updateEstimateVisible()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/exsettings/widget/ChartDataUsageView;Lcom/android/exsettings/widget/ChartSweepView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/widget/ChartDataUsageView;
    .param p1, "x1"    # Lcom/android/exsettings/widget/ChartSweepView;
    .param p2, "x2"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/widget/ChartDataUsageView;->sendUpdateAxisDelayed(Lcom/android/exsettings/widget/ChartSweepView;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/exsettings/widget/ChartDataUsageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/widget/ChartDataUsageView;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/exsettings/widget/ChartDataUsageView;->updatePrimaryRange()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/exsettings/widget/ChartDataUsageView;)Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/widget/ChartDataUsageView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mListener:Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exsettings/widget/ChartDataUsageView;Lcom/android/exsettings/widget/ChartSweepView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/widget/ChartDataUsageView;
    .param p1, "x1"    # Lcom/android/exsettings/widget/ChartSweepView;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/exsettings/widget/ChartDataUsageView;->clearUpdateAxisDelayed(Lcom/android/exsettings/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/exsettings/widget/ChartDataUsageView;)Lcom/android/exsettings/widget/ChartSweepView;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/widget/ChartDataUsageView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/exsettings/widget/ChartSweepView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/exsettings/widget/ChartDataUsageView;)Lcom/android/exsettings/widget/ChartSweepView;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/widget/ChartDataUsageView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/exsettings/widget/ChartSweepView;

    return-object v0
.end method

.method static synthetic access$800(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/text/SpannableStringBuilder;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/CharSequence;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0, p1, p2, p3}, Lcom/android/exsettings/widget/ChartDataUsageView;->setText(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(J)J
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/android/exsettings/widget/ChartDataUsageView;->roundUpToPowerOfTwo(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private clearUpdateAxisDelayed(Lcom/android/exsettings/widget/ChartSweepView;)V
    .locals 2
    .param p1, "sweep"    # Lcom/android/exsettings/widget/ChartSweepView;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 333
    return-void
.end method

.method private getHistoryEnd()J
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method

.method private getHistoryStart()J
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method private static roundUpToPowerOfTwo(J)J
    .locals 4
    .param p0, "i"    # J

    .prologue
    const-wide/16 v2, 0x1

    .line 676
    sub-long/2addr p0, v2

    .line 679
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 680
    const/4 v0, 0x2

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 681
    const/4 v0, 0x4

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 682
    const/16 v0, 0x8

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 683
    const/16 v0, 0x10

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 684
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 686
    add-long/2addr p0, v2

    .line 688
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .end local p0    # "i":J
    :goto_0
    return-wide p0

    .restart local p0    # "i":J
    :cond_0
    const-wide p0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method private sendUpdateAxisDelayed(Lcom/android/exsettings/widget/ChartSweepView;Z)V
    .locals 4
    .param p1, "sweep"    # Lcom/android/exsettings/widget/ChartSweepView;
    .param p2, "force"    # Z

    .prologue
    const/16 v2, 0x64

    .line 325
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 329
    :cond_1
    return-void
.end method

.method private static setText(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "bootstrap"    # Ljava/lang/String;

    .prologue
    .line 663
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 664
    .local v1, "start":I
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 665
    .local v0, "end":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 666
    invoke-static {p0, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    .line 667
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int v0, v1, v2

    .line 668
    const/16 v2, 0x12

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 670
    :cond_0
    invoke-virtual {p0, v1, v0, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 671
    return-void
.end method

.method private updateEstimateVisible()V
    .locals 10

    .prologue
    .line 289
    iget-object v1, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v1}, Lcom/android/exsettings/widget/ChartNetworkSeriesView;->getMaxEstimate()J

    move-result-wide v4

    .line 292
    .local v4, "maxEstimate":J
    const-wide v2, 0x7fffffffffffffffL

    .line 293
    .local v2, "interestLine":J
    iget-object v1, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/exsettings/widget/ChartSweepView;

    invoke-virtual {v1}, Lcom/android/exsettings/widget/ChartSweepView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 294
    iget-object v1, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/exsettings/widget/ChartSweepView;

    invoke-virtual {v1}, Lcom/android/exsettings/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    .line 299
    :cond_0
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-gez v1, :cond_1

    .line 300
    const-wide v2, 0x7fffffffffffffffL

    .line 303
    :cond_1
    const-wide/16 v6, 0x7

    mul-long/2addr v6, v2

    const-wide/16 v8, 0xa

    div-long/2addr v6, v8

    cmp-long v1, v4, v6

    if-ltz v1, :cond_3

    const/4 v0, 0x1

    .line 304
    .local v0, "estimateVisible":Z
    :goto_1
    iget-object v1, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v1, v0}, Lcom/android/exsettings/widget/ChartNetworkSeriesView;->setEstimateVisible(Z)V

    .line 305
    return-void

    .line 295
    .end local v0    # "estimateVisible":Z
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/exsettings/widget/ChartSweepView;

    invoke-virtual {v1}, Lcom/android/exsettings/widget/ChartSweepView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/exsettings/widget/ChartSweepView;

    invoke-virtual {v1}, Lcom/android/exsettings/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    goto :goto_0

    .line 303
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updatePrimaryRange()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 460
    iget-object v4, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/exsettings/widget/ChartSweepView;

    invoke-virtual {v4}, Lcom/android/exsettings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    .line 461
    .local v0, "left":J
    iget-object v4, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/exsettings/widget/ChartSweepView;

    invoke-virtual {v4}, Lcom/android/exsettings/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    .line 463
    .local v2, "right":J
    iget-object v4, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v4}, Lcom/android/exsettings/widget/ChartNetworkSeriesView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 464
    iget-object v4, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/exsettings/widget/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    .line 465
    iget-object v4, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v6, v7, v6, v7}, Lcom/android/exsettings/widget/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    .line 466
    iget-object v4, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/exsettings/widget/ChartNetworkSeriesView;->setSecondary(Z)V

    .line 471
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-object v4, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/exsettings/widget/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    .line 469
    iget-object v4, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/exsettings/widget/ChartNetworkSeriesView;->setSecondary(Z)V

    goto :goto_0
.end method

.method private updateVertAxisBounds(Lcom/android/exsettings/widget/ChartSweepView;)V
    .locals 24
    .param p1, "activeSweep"    # Lcom/android/exsettings/widget/ChartSweepView;

    .prologue
    .line 229
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/exsettings/widget/ChartDataUsageView;->mVertMax:J

    .line 231
    .local v8, "max":J
    const-wide/16 v18, 0x0

    .line 232
    .local v18, "newMax":J
    if-eqz p1, :cond_0

    .line 233
    invoke-virtual/range {p1 .. p1}, Lcom/android/exsettings/widget/ChartSweepView;->shouldAdjustAxis()I

    move-result v6

    .line 234
    .local v6, "adjustAxis":I
    if-lez v6, :cond_5

    .line 236
    const-wide/16 v20, 0xb

    mul-long v20, v20, v8

    const-wide/16 v22, 0xa

    div-long v18, v20, v22

    .line 246
    .end local v6    # "adjustAxis":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/exsettings/widget/ChartSweepView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/exsettings/widget/ChartSweepView;->getValue()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/exsettings/widget/ChartSweepView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/widget/ChartSweepView;->getValue()J

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 247
    .local v14, "maxSweep":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/exsettings/widget/ChartNetworkSeriesView;->getMaxVisible()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/widget/ChartNetworkSeriesView;->getMaxVisible()J

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 248
    .local v12, "maxSeries":J
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    const-wide/16 v22, 0xc

    mul-long v20, v20, v22

    const-wide/16 v22, 0xa

    div-long v16, v20, v22

    .line 249
    .local v16, "maxVisible":J
    const-wide/32 v20, 0x3200000

    move-wide/from16 v0, v16

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 250
    .local v10, "maxDefault":J
    move-wide/from16 v0, v18

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    .line 253
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/widget/ChartDataUsageView;->mVertMax:J

    move-wide/from16 v20, v0

    cmp-long v20, v18, v20

    if-eqz v20, :cond_4

    .line 254
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/widget/ChartDataUsageView;->mVertMax:J

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/widget/ChartDataUsageView;->mVert:Lcom/android/exsettings/widget/ChartAxis;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v18

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/exsettings/widget/ChartAxis;->setBounds(JJ)Z

    move-result v7

    .line 257
    .local v7, "changed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/exsettings/widget/ChartSweepView;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exsettings/widget/ChartSweepView;->setValidRange(JJ)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/exsettings/widget/ChartSweepView;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exsettings/widget/ChartSweepView;->setValidRange(JJ)V

    .line 260
    if-eqz v7, :cond_1

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/exsettings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/exsettings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 265
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/widget/ChartDataUsageView;->mGrid:Lcom/android/exsettings/widget/ChartGridView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/exsettings/widget/ChartGridView;->invalidate()V

    .line 268
    if-eqz p1, :cond_2

    .line 269
    invoke-virtual/range {p1 .. p1}, Lcom/android/exsettings/widget/ChartSweepView;->updateValueFromPosition()V

    .line 275
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/exsettings/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_3

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/exsettings/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/ChartDataUsageView;->layoutSweep(Lcom/android/exsettings/widget/ChartSweepView;)V

    .line 278
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/exsettings/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_4

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/exsettings/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/ChartDataUsageView;->layoutSweep(Lcom/android/exsettings/widget/ChartSweepView;)V

    .line 282
    .end local v7    # "changed":Z
    :cond_4
    return-void

    .line 237
    .end local v10    # "maxDefault":J
    .end local v12    # "maxSeries":J
    .end local v14    # "maxSweep":J
    .end local v16    # "maxVisible":J
    .restart local v6    # "adjustAxis":I
    :cond_5
    if-gez v6, :cond_6

    .line 239
    const-wide/16 v20, 0x9

    mul-long v20, v20, v8

    const-wide/16 v22, 0xa

    div-long v18, v20, v22

    goto/16 :goto_0

    .line 241
    :cond_6
    move-wide/from16 v18, v8

    goto/16 :goto_0
.end method


# virtual methods
.method public bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 4
    .param p1, "stats"    # Landroid/net/NetworkStatsHistory;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/exsettings/widget/ChartNetworkSeriesView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 182
    iget-object v1, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/exsettings/widget/ChartNetworkSeriesView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/exsettings/widget/ChartNetworkSeriesView;->setEndTime(J)V

    .line 186
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exsettings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/exsettings/widget/ChartSweepView;)V

    .line 187
    invoke-direct {p0}, Lcom/android/exsettings/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 188
    invoke-direct {p0}, Lcom/android/exsettings/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 189
    invoke-virtual {p0}, Lcom/android/exsettings/widget/ChartDataUsageView;->requestLayout()V

    .line 190
    return-void

    .line 182
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public bindNetworkPolicy(Landroid/net/NetworkPolicy;)V
    .locals 8
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const-wide/16 v4, -0x1

    .line 193
    if-nez p1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/exsettings/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/exsettings/widget/ChartSweepView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/exsettings/widget/ChartSweepView;

    invoke-virtual {v0, v4, v5}, Lcom/android/exsettings/widget/ChartSweepView;->setValue(J)V

    .line 196
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/exsettings/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/exsettings/widget/ChartSweepView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/exsettings/widget/ChartSweepView;

    invoke-virtual {v0, v4, v5}, Lcom/android/exsettings/widget/ChartSweepView;->setValue(J)V

    .line 222
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/exsettings/widget/ChartSweepView;

    invoke-virtual {v0, v7}, Lcom/android/exsettings/widget/ChartSweepView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/exsettings/widget/ChartSweepView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/ChartSweepView;->setEnabled(Z)V

    .line 204
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/exsettings/widget/ChartSweepView;

    iget-wide v2, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v0, v2, v3}, Lcom/android/exsettings/widget/ChartSweepView;->setValue(J)V

    .line 211
    :goto_1
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/exsettings/widget/ChartSweepView;

    invoke-virtual {v0, v7}, Lcom/android/exsettings/widget/ChartSweepView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/exsettings/widget/ChartSweepView;

    iget-wide v2, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v0, v2, v3}, Lcom/android/exsettings/widget/ChartSweepView;->setValue(J)V

    .line 219
    :goto_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exsettings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/exsettings/widget/ChartSweepView;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/exsettings/widget/ChartDataUsageView;->requestLayout()V

    .line 221
    invoke-virtual {p0}, Lcom/android/exsettings/widget/ChartDataUsageView;->invalidate()V

    goto :goto_0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/exsettings/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/exsettings/widget/ChartSweepView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/exsettings/widget/ChartSweepView;

    invoke-virtual {v0, v7}, Lcom/android/exsettings/widget/ChartSweepView;->setEnabled(Z)V

    .line 208
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/exsettings/widget/ChartSweepView;

    invoke-virtual {v0, v4, v5}, Lcom/android/exsettings/widget/ChartSweepView;->setValue(J)V

    goto :goto_1

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/exsettings/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/exsettings/widget/ChartSweepView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/exsettings/widget/ChartSweepView;

    invoke-virtual {v0, v4, v5}, Lcom/android/exsettings/widget/ChartSweepView;->setValue(J)V

    goto :goto_2
.end method

.method public bindNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 1
    .param p1, "stats"    # Landroid/net/NetworkStatsHistory;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/exsettings/widget/ChartNetworkSeriesView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 173
    iput-object p1, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exsettings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/exsettings/widget/ChartSweepView;)V

    .line 175
    invoke-direct {p0}, Lcom/android/exsettings/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 176
    invoke-direct {p0}, Lcom/android/exsettings/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 177
    invoke-virtual {p0}, Lcom/android/exsettings/widget/ChartDataUsageView;->requestLayout()V

    .line 178
    return-void
.end method

.method public getInspectEnd()J
    .locals 2

    .prologue
    .line 385
    iget-wide v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mInspectEnd:J

    return-wide v0
.end method

.method public getInspectLeft()J
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/exsettings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInspectRight()J
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/exsettings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInspectStart()J
    .locals 2

    .prologue
    .line 381
    iget-wide v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mInspectStart:J

    return-wide v0
.end method

.method public getLimitBytes()J
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/exsettings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/ChartSweepView;->getLabelValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWarningBytes()J
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/exsettings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/ChartSweepView;->getLabelValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 115
    invoke-super {p0}, Lcom/android/exsettings/widget/ChartView;->onFinishInflate()V

    .line 117
    const v0, 0x7f120085

    invoke-virtual {p0, v0}, Lcom/android/exsettings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/widget/ChartGridView;

    iput-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mGrid:Lcom/android/exsettings/widget/ChartGridView;

    .line 118
    const v0, 0x7f120086

    invoke-virtual {p0, v0}, Lcom/android/exsettings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    .line 119
    const v0, 0x7f120087

    invoke-virtual {p0, v0}, Lcom/android/exsettings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    .line 120
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/ChartNetworkSeriesView;->setVisibility(I)V

    .line 122
    const v0, 0x7f120088

    invoke-virtual {p0, v0}, Lcom/android/exsettings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/exsettings/widget/ChartSweepView;

    .line 123
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/exsettings/widget/ChartSweepView;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/ChartSweepView;->setVisibility(I)V

    .line 124
    const v0, 0x7f120089

    invoke-virtual {p0, v0}, Lcom/android/exsettings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/exsettings/widget/ChartSweepView;

    .line 125
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/exsettings/widget/ChartSweepView;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/ChartSweepView;->setVisibility(I)V

    .line 126
    const v0, 0x7f12008b

    invoke-virtual {p0, v0}, Lcom/android/exsettings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/exsettings/widget/ChartSweepView;

    .line 127
    const v0, 0x7f12008a

    invoke-virtual {p0, v0}, Lcom/android/exsettings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/exsettings/widget/ChartSweepView;

    .line 130
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/exsettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/exsettings/widget/ChartSweepView;

    invoke-virtual {v0, v2, v1}, Lcom/android/exsettings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/exsettings/widget/ChartSweepView;Lcom/android/exsettings/widget/ChartSweepView;)V

    .line 131
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/exsettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/exsettings/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/exsettings/widget/ChartSweepView;Lcom/android/exsettings/widget/ChartSweepView;)V

    .line 132
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/exsettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/exsettings/widget/ChartSweepView;

    invoke-virtual {v0, v2, v1}, Lcom/android/exsettings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/exsettings/widget/ChartSweepView;Lcom/android/exsettings/widget/ChartSweepView;)V

    .line 133
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/exsettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/exsettings/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/exsettings/widget/ChartSweepView;Lcom/android/exsettings/widget/ChartSweepView;)V

    .line 136
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/exsettings/widget/ChartSweepView;

    new-array v1, v3, [Lcom/android/exsettings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/exsettings/widget/ChartSweepView;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/ChartSweepView;->setNeighbors([Lcom/android/exsettings/widget/ChartSweepView;)V

    .line 137
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/exsettings/widget/ChartSweepView;

    new-array v1, v3, [Lcom/android/exsettings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/exsettings/widget/ChartSweepView;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/ChartSweepView;->setNeighbors([Lcom/android/exsettings/widget/ChartSweepView;)V

    .line 138
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/exsettings/widget/ChartSweepView;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/exsettings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/exsettings/widget/ChartSweepView;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/exsettings/widget/ChartSweepView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/exsettings/widget/ChartSweepView;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/ChartSweepView;->setNeighbors([Lcom/android/exsettings/widget/ChartSweepView;)V

    .line 139
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/exsettings/widget/ChartSweepView;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/exsettings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/exsettings/widget/ChartSweepView;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/exsettings/widget/ChartSweepView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/exsettings/widget/ChartSweepView;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/ChartSweepView;->setNeighbors([Lcom/android/exsettings/widget/ChartSweepView;)V

    .line 141
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/exsettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mHorizListener:Lcom/android/exsettings/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/ChartSweepView;->addOnSweepListener(Lcom/android/exsettings/widget/ChartSweepView$OnSweepListener;)V

    .line 142
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/exsettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mHorizListener:Lcom/android/exsettings/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/ChartSweepView;->addOnSweepListener(Lcom/android/exsettings/widget/ChartSweepView$OnSweepListener;)V

    .line 143
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/exsettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mVertListener:Lcom/android/exsettings/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/ChartSweepView;->addOnSweepListener(Lcom/android/exsettings/widget/ChartSweepView$OnSweepListener;)V

    .line 144
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/exsettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mVertListener:Lcom/android/exsettings/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/ChartSweepView;->addOnSweepListener(Lcom/android/exsettings/widget/ChartSweepView$OnSweepListener;)V

    .line 147
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/exsettings/widget/ChartSweepView;

    invoke-virtual {v0, v4}, Lcom/android/exsettings/widget/ChartSweepView;->setClickable(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/exsettings/widget/ChartSweepView;

    invoke-virtual {v0, v4}, Lcom/android/exsettings/widget/ChartSweepView;->setFocusable(Z)V

    .line 149
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/exsettings/widget/ChartSweepView;

    invoke-virtual {v0, v4}, Lcom/android/exsettings/widget/ChartSweepView;->setClickable(Z)V

    .line 150
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/exsettings/widget/ChartSweepView;

    invoke-virtual {v0, v4}, Lcom/android/exsettings/widget/ChartSweepView;->setFocusable(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/exsettings/widget/ChartSweepView;

    const-wide/32 v2, 0x500000

    invoke-virtual {v0, v2, v3}, Lcom/android/exsettings/widget/ChartSweepView;->setDragInterval(J)V

    .line 153
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/exsettings/widget/ChartSweepView;

    const-wide/32 v2, 0x500000

    invoke-virtual {v0, v2, v3}, Lcom/android/exsettings/widget/ChartSweepView;->setDragInterval(J)V

    .line 156
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mGrid:Lcom/android/exsettings/widget/ChartGridView;

    iget-object v1, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mHoriz:Lcom/android/exsettings/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mVert:Lcom/android/exsettings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/widget/ChartGridView;->init(Lcom/android/exsettings/widget/ChartAxis;Lcom/android/exsettings/widget/ChartAxis;)V

    .line 157
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mHoriz:Lcom/android/exsettings/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mVert:Lcom/android/exsettings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/widget/ChartNetworkSeriesView;->init(Lcom/android/exsettings/widget/ChartAxis;Lcom/android/exsettings/widget/ChartAxis;)V

    .line 158
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mHoriz:Lcom/android/exsettings/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mVert:Lcom/android/exsettings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/widget/ChartNetworkSeriesView;->init(Lcom/android/exsettings/widget/ChartAxis;Lcom/android/exsettings/widget/ChartAxis;)V

    .line 159
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/exsettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mHoriz:Lcom/android/exsettings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/ChartSweepView;->init(Lcom/android/exsettings/widget/ChartAxis;)V

    .line 160
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/exsettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mHoriz:Lcom/android/exsettings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/ChartSweepView;->init(Lcom/android/exsettings/widget/ChartAxis;)V

    .line 161
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/exsettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mVert:Lcom/android/exsettings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/ChartSweepView;->init(Lcom/android/exsettings/widget/ChartAxis;)V

    .line 162
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/exsettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mVert:Lcom/android/exsettings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/ChartSweepView;->init(Lcom/android/exsettings/widget/ChartAxis;)V

    .line 164
    invoke-virtual {p0, v4}, Lcom/android/exsettings/widget/ChartDataUsageView;->setActivated(Z)V

    .line 165
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 365
    invoke-virtual {p0}, Lcom/android/exsettings/widget/ChartDataUsageView;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    :goto_0
    return v0

    .line 366
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 368
    goto :goto_0

    .line 371
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/exsettings/widget/ChartDataUsageView;->setActivated(Z)V

    move v0, v1

    .line 372
    goto :goto_0

    .line 366
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDateSelectionSweepVisible(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/exsettings/widget/ChartSweepView;

    invoke-virtual {v0, p1}, Lcom/android/exsettings/widget/ChartSweepView;->setVisibility(I)V

    .line 693
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/exsettings/widget/ChartSweepView;

    invoke-virtual {v0, p1}, Lcom/android/exsettings/widget/ChartSweepView;->setVisibility(I)V

    .line 694
    return-void
.end method

.method public setListener(Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/exsettings/widget/ChartDataUsageView;->mListener:Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;

    .line 169
    return-void
.end method

.method public setVisibleRange(JJJJ)V
    .locals 25
    .param p1, "visibleStart"    # J
    .param p3, "visibleEnd"    # J
    .param p5, "selectLeft"    # J
    .param p7, "selectRight"    # J

    .prologue
    .line 419
    const-string v5, "DataUsage"

    const-string v20, "setVisibleRange"

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/widget/ChartDataUsageView;->mHoriz:Lcom/android/exsettings/widget/ChartAxis;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-interface {v5, v0, v1, v2, v3}, Lcom/android/exsettings/widget/ChartAxis;->setBounds(JJ)Z

    move-result v4

    .line 421
    .local v4, "changed":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/widget/ChartDataUsageView;->mGrid:Lcom/android/exsettings/widget/ChartGridView;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/exsettings/widget/ChartGridView;->setBounds(JJ)V

    .line 422
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/exsettings/widget/ChartNetworkSeriesView;->setBounds(JJ)V

    .line 423
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/exsettings/widget/ChartNetworkSeriesView;->setBounds(JJ)V

    .line 425
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/widget/ChartDataUsageView;->mInspectStart:J

    .line 426
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/widget/ChartDataUsageView;->mInspectEnd:J

    .line 428
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/widget/ChartDataUsageView;->getHistoryStart()J

    move-result-wide v10

    .line 429
    .local v10, "historyStart":J
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/widget/ChartDataUsageView;->getHistoryEnd()J

    move-result-wide v8

    .line 430
    .local v8, "historyEnd":J
    const-wide v20, 0x7fffffffffffffffL

    cmp-long v5, v10, v20

    if-nez v5, :cond_1

    move-wide/from16 v18, p1

    .line 432
    .local v18, "validStart":J
    :goto_0
    const-wide/high16 v20, -0x8000000000000000L

    cmp-long v5, v8, v20

    if-nez v5, :cond_2

    move-wide/from16 v16, p3

    .line 434
    .local v16, "validEnd":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/exsettings/widget/ChartSweepView;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/exsettings/widget/ChartSweepView;->setValidRange(JJ)V

    .line 435
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/exsettings/widget/ChartSweepView;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/exsettings/widget/ChartSweepView;->setValidRange(JJ)V

    .line 438
    add-long v20, p3, p1

    const-wide/16 v22, 0x2

    div-long v6, v20, v22

    .line 439
    .local v6, "halfRange":J
    move-wide/from16 v12, v16

    .line 440
    .local v12, "sweepMax":J
    const-wide/32 v20, 0x240c8400

    sub-long v20, v12, v20

    move-wide/from16 v0, p1

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 442
    .local v14, "sweepMin":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/exsettings/widget/ChartSweepView;

    cmp-long v20, p5, p1

    if-ltz v20, :cond_3

    cmp-long v20, p5, p3

    if-gtz v20, :cond_3

    .end local p5    # "selectLeft":J
    :goto_2
    move-wide/from16 v0, p5

    invoke-virtual {v5, v0, v1}, Lcom/android/exsettings/widget/ChartSweepView;->setValue(J)V

    .line 444
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/exsettings/widget/ChartSweepView;

    cmp-long v20, p7, p1

    if-ltz v20, :cond_4

    cmp-long v20, p7, p3

    if-gtz v20, :cond_4

    .end local p7    # "selectRight":J
    :goto_3
    move-wide/from16 v0, p7

    invoke-virtual {v5, v0, v1}, Lcom/android/exsettings/widget/ChartSweepView;->setValue(J)V

    .line 446
    const-string v5, "DataUsage"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "sweepMax"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    new-instance v21, Ljava/util/Date;

    move-object/from16 v0, v21

    invoke-direct {v0, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v21 .. v21}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "sweepMin"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    new-instance v21, Ljava/util/Date;

    move-object/from16 v0, v21

    invoke-direct {v0, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v21 .. v21}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/widget/ChartDataUsageView;->requestLayout()V

    .line 449
    if-eqz v4, :cond_0

    .line 450
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/widget/ChartDataUsageView;->mSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v5}, Lcom/android/exsettings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 451
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v5}, Lcom/android/exsettings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 454
    :cond_0
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/exsettings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/exsettings/widget/ChartSweepView;)V

    .line 455
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 456
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 457
    return-void

    .line 430
    .end local v6    # "halfRange":J
    .end local v12    # "sweepMax":J
    .end local v14    # "sweepMin":J
    .end local v16    # "validEnd":J
    .end local v18    # "validStart":J
    .restart local p5    # "selectLeft":J
    .restart local p7    # "selectRight":J
    :cond_1
    move-wide/from16 v0, p1

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    goto/16 :goto_0

    .line 432
    .restart local v18    # "validStart":J
    :cond_2
    move-wide/from16 v0, p3

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    goto/16 :goto_1

    .restart local v6    # "halfRange":J
    .restart local v12    # "sweepMax":J
    .restart local v14    # "sweepMin":J
    .restart local v16    # "validEnd":J
    :cond_3
    move-wide/from16 p5, v14

    .line 442
    goto/16 :goto_2

    .end local p5    # "selectLeft":J
    :cond_4
    move-wide/from16 p7, v12

    .line 444
    goto :goto_3
.end method
