.class public Landroid/app/Notification$BigTextStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigTextStyle"
.end annotation


# static fields
.field private static final LINES_CONSUMED_BY_ACTIONS:I = 0x3

.field private static final LINES_CONSUMED_BY_SUMMARY:I = 0x2

.field private static final MAX_LINES:I = 0xd


# instance fields
.field private mBigText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4214
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 4215
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 4217
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 4218
    invoke-virtual {p0, p1}, Landroid/app/Notification$BigTextStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 4219
    return-void
.end method

.method private calculateMaxLines()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4291
    const/16 v2, 0xd

    .line 4292
    .local v2, "lineCount":I
    iget-object v5, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;
    invoke-static {v5}, Landroid/app/Notification$Builder;->access$2100(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    move v0, v3

    .line 4293
    .local v0, "hasActions":Z
    :goto_0
    iget-boolean v5, p0, Landroid/app/Notification$BigTextStyle;->mSummaryTextSet:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/app/Notification$BigTextStyle;->mSummaryText:Ljava/lang/CharSequence;

    :goto_1
    if-eqz v5, :cond_5

    move v1, v3

    .line 4294
    .local v1, "hasSummary":Z
    :goto_2
    if-eqz v0, :cond_0

    .line 4295
    add-int/lit8 v2, v2, -0x3

    .line 4297
    :cond_0
    if-eqz v1, :cond_1

    .line 4298
    add-int/lit8 v2, v2, -0x2

    .line 4302
    :cond_1
    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mHasThreeLines:Z
    invoke-static {v3}, Landroid/app/Notification$Builder;->access$1300(Landroid/app/Notification$Builder;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4303
    add-int/lit8 v2, v2, -0x1

    .line 4305
    :cond_2
    return v2

    .end local v0    # "hasActions":Z
    .end local v1    # "hasSummary":Z
    :cond_3
    move v0, v4

    .line 4292
    goto :goto_0

    .line 4293
    .restart local v0    # "hasActions":Z
    :cond_4
    iget-object v5, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/app/Notification$Builder;->access$1000(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_1

    :cond_5
    move v1, v4

    goto :goto_2
.end method

.method private makeBigContentView()Landroid/widget/RemoteViews;
    .locals 5

    .prologue
    const v4, #android:id@big_text#t

    .line 4269
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/app/Notification$Builder;->access$1600(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4270
    .local v1, "oldBuilderContentText":Ljava/lang/CharSequence;
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    const/4 v3, 0x0

    # setter for: Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Landroid/app/Notification$Builder;->access$1602(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 4272
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    # invokes: Landroid/app/Notification$Builder;->getBigTextLayoutResource()I
    invoke-static {v2}, Landroid/app/Notification$Builder;->access$1900(Landroid/app/Notification$Builder;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Notification$BigTextStyle;->getStandardView(I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 4274
    .local v0, "contentView":Landroid/widget/RemoteViews;
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    # setter for: Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;
    invoke-static {v2, v1}, Landroid/app/Notification$Builder;->access$1602(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 4276
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    # invokes: Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Landroid/app/Notification$Builder;->access$1100(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4277
    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4278
    const-string/jumbo v2, "setMaxLines"

    invoke-direct {p0}, Landroid/app/Notification$BigTextStyle;->calculateMaxLines()I

    move-result v3

    invoke-virtual {v0, v4, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v2, #android:id@text2#t

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigTextStyle;->applyTopPadding(Landroid/widget/RemoteViews;)V

    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    # invokes: Landroid/app/Notification$Builder;->shrinkLine3Text(Landroid/widget/RemoteViews;)V
    invoke-static {v2, v0}, Landroid/app/Notification$Builder;->access$2000(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)V

    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    const v3, #android:id@profile_badge_large_template#t

    # invokes: Landroid/app/Notification$Builder;->addProfileBadge(Landroid/widget/RemoteViews;I)Z
    invoke-static {v2, v0, v3}, Landroid/app/Notification$Builder;->access$1700(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;I)Z

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigTextStyle;->makeBigContentViewFlyme(Landroid/widget/RemoteViews;)V

    .line 4287
    return-object v0
.end method

.method private makeSmsBigContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 7
    .param p1, "view"    # Landroid/widget/RemoteViews;

    .prologue
    const/16 v3, 0x14

    const/16 v6, 0x8

    const/4 v2, 0x0

    move-object v0, p1

    .local v0, "contentView":Landroid/widget/RemoteViews;
    const v1, #android:id@big_text#t

    const-string v4, "setMaxLines"

    const/4 v5, 0x2

    invoke-virtual {v0, v1, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v1, #android:id@icon#t

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    const v1, #android:id@right_icon#t

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    const v1, #android:id@overflow_divider#t

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, #android:id@line3#t

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object v0
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 4251
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 4253
    const-string v0, "android.bigText"

    iget-object v1, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4254
    return-void
.end method

.method public bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 4243
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    .line 4244
    return-object p0
.end method

.method public populateBigContentView(Landroid/app/Notification;)V
    .locals 2
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 4313
    iget-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0}, Landroid/app/Notification$BigTextStyle;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    # invokes: Landroid/app/Notification$Builder;->setBuilderBigContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    invoke-static {v0, p1, v1}, Landroid/app/Notification$Builder;->access$1800(Landroid/app/Notification$Builder;Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 4314
    return-void
.end method

.method public populateHeadsUpContentView(Landroid/app/Notification;)V
    .locals 3
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 4332
    iget-object v1, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/app/Notification$Builder;->access$1200(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v2, "com.android.mms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4333
    invoke-direct {p0}, Landroid/app/Notification$BigTextStyle;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 4334
    .local v0, "view":Landroid/widget/RemoteViews;
    iget-object v1, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0, v0}, Landroid/app/Notification$BigTextStyle;->makeSmsBigContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v2

    # invokes: Landroid/app/Notification$Builder;->setBuilderHeadsUpContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    invoke-static {v1, p1, v2}, Landroid/app/Notification$Builder;->access$2200(Landroid/app/Notification$Builder;Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 4336
    .end local v0    # "view":Landroid/widget/RemoteViews;
    :cond_0
    return-void
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 4261
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 4263
    const-string v0, "android.bigText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    .line 4264
    return-void
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 4226
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigTextStyle;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    .line 4227
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 4234
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigTextStyle;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    .line 4235
    return-object p0
.end method

.method public makeBigContentViewFlyme(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    sget v0, Lcom/flyme/internal/R$id;->big_text:I

    iget-object v1, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->flymeInvokeMethodProcessLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v0, Lcom/flyme/internal/R$id;->big_text:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v0, Lcom/flyme/internal/R$id;->text2:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method
