.class Lcom/android/exsettings/DataUsageSummary$10;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/exsettings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1445
    iput-object p1, p0, Lcom/android/exsettings/DataUsageSummary$10;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1448
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/DataUsageSummary$CycleItem;

    .line 1449
    .local v0, "cycle":Lcom/android/exsettings/DataUsageSummary$CycleItem;
    instance-of v1, v0, Lcom/android/exsettings/DataUsageSummary$CycleChangeItem;

    if-eqz v1, :cond_0

    .line 1452
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$10;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary$CycleEditorFragment;->show(Lcom/android/exsettings/DataUsageSummary;)V

    .line 1455
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$10;->this$0:Lcom/android/exsettings/DataUsageSummary;

    # getter for: Lcom/android/exsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->access$1900(Lcom/android/exsettings/DataUsageSummary;)Landroid/widget/Spinner;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1472
    :goto_0
    return-void

    .line 1465
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$10;->this$0:Lcom/android/exsettings/DataUsageSummary;

    # getter for: Lcom/android/exsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->access$200(Lcom/android/exsettings/DataUsageSummary;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v10

    .line 1466
    .local v10, "tabIndex":I
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tabIndex ---- get   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$10;->this$0:Lcom/android/exsettings/DataUsageSummary;

    # getter for: Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->access$500(Lcom/android/exsettings/DataUsageSummary;)Lcom/android/exsettings/widget/ChartDataUsageView;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/exsettings/DataUsageSummary$CycleItem;->start:J

    iget-wide v4, v0, Lcom/android/exsettings/DataUsageSummary$CycleItem;->end:J

    # getter for: Lcom/android/exsettings/DataUsageSummary;->mSelectLeft:[J
    invoke-static {}, Lcom/android/exsettings/DataUsageSummary;->access$600()[J

    move-result-object v6

    aget-wide v6, v6, v10

    # getter for: Lcom/android/exsettings/DataUsageSummary;->mSelectRight:[J
    invoke-static {}, Lcom/android/exsettings/DataUsageSummary;->access$700()[J

    move-result-object v8

    aget-wide v8, v8, v10

    invoke-virtual/range {v1 .. v9}, Lcom/android/exsettings/widget/ChartDataUsageView;->setVisibleRange(JJJJ)V

    .line 1470
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$10;->this$0:Lcom/android/exsettings/DataUsageSummary;

    # invokes: Lcom/android/exsettings/DataUsageSummary;->updateDetailData()V
    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->access$2000(Lcom/android/exsettings/DataUsageSummary;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1477
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
