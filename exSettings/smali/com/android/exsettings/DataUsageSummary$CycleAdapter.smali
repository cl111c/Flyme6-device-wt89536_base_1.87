.class public Lcom/android/exsettings/DataUsageSummary$CycleAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/exsettings/DataUsageSummary$CycleItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mChangeItem:Lcom/android/exsettings/DataUsageSummary$CycleChangeItem;

.field private mChangePossible:Z

.field private mChangeVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 1739
    const v0, 0x7f04004d

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 1733
    iput-boolean v1, p0, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    .line 1734
    iput-boolean v1, p0, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    .line 1740
    const v0, 0x7f04004e

    invoke-virtual {p0, v0}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->setDropDownViewResource(I)V

    .line 1741
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$CycleChangeItem;

    invoke-direct {v0, p1}, Lcom/android/exsettings/DataUsageSummary$CycleChangeItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/android/exsettings/DataUsageSummary$CycleChangeItem;

    .line 1742
    return-void
.end method

.method private updateChange()V
    .locals 1

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/android/exsettings/DataUsageSummary$CycleChangeItem;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->remove(Ljava/lang/Object;)V

    .line 1756
    iget-boolean v0, p0, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    if-eqz v0, :cond_0

    .line 1757
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/android/exsettings/DataUsageSummary$CycleChangeItem;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 1759
    :cond_0
    return-void
.end method


# virtual methods
.method public findNearestPosition(Lcom/android/exsettings/DataUsageSummary$CycleItem;)I
    .locals 4
    .param p1, "target"    # Lcom/android/exsettings/DataUsageSummary$CycleItem;

    .prologue
    .line 1766
    if-eqz p1, :cond_2

    .line 1767
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->getCount()I

    move-result v0

    .line 1768
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1769
    invoke-virtual {p0, v1}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/DataUsageSummary$CycleItem;

    .line 1770
    .local v2, "item":Lcom/android/exsettings/DataUsageSummary$CycleItem;
    instance-of v3, v2, Lcom/android/exsettings/DataUsageSummary$CycleChangeItem;

    if-eqz v3, :cond_1

    .line 1768
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1772
    :cond_1
    invoke-virtual {v2, p1}, Lcom/android/exsettings/DataUsageSummary$CycleItem;->compareTo(Lcom/android/exsettings/DataUsageSummary$CycleItem;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 1777
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/android/exsettings/DataUsageSummary$CycleItem;
    :goto_1
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setChangePossible(Z)V
    .locals 0
    .param p1, "possible"    # Z

    .prologue
    .line 1745
    iput-boolean p1, p0, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    .line 1746
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->updateChange()V

    .line 1747
    return-void
.end method

.method public setChangeVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1750
    iput-boolean p1, p0, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    .line 1751
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->updateChange()V

    .line 1752
    return-void
.end method
