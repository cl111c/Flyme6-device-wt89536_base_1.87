.class Lcom/android/exsettings/DataUsageSummary$4;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


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
    .line 900
    iput-object p1, p0, Lcom/android/exsettings/DataUsageSummary$4;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 10
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 903
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTabChanged() selected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$4;->this$0:Lcom/android/exsettings/DataUsageSummary;

    # getter for: Lcom/android/exsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->access$300(Lcom/android/exsettings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$4;->this$0:Lcom/android/exsettings/DataUsageSummary;

    # getter for: Lcom/android/exsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->access$300(Lcom/android/exsettings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/exsettings/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z
    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->access$400(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 905
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$4;->this$0:Lcom/android/exsettings/DataUsageSummary;

    # getter for: Lcom/android/exsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->access$200(Lcom/android/exsettings/DataUsageSummary;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 906
    .local v0, "tabIndex":I
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tabIndex ---- get in tab changing  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$4;->this$0:Lcom/android/exsettings/DataUsageSummary;

    # getter for: Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->access$500(Lcom/android/exsettings/DataUsageSummary;)Lcom/android/exsettings/widget/ChartDataUsageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/DataUsageSummary$4;->this$0:Lcom/android/exsettings/DataUsageSummary;

    # getter for: Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;
    invoke-static {v2}, Lcom/android/exsettings/DataUsageSummary;->access$500(Lcom/android/exsettings/DataUsageSummary;)Lcom/android/exsettings/widget/ChartDataUsageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exsettings/widget/ChartDataUsageView;->getInspectStart()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary$4;->this$0:Lcom/android/exsettings/DataUsageSummary;

    # getter for: Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;
    invoke-static {v4}, Lcom/android/exsettings/DataUsageSummary;->access$500(Lcom/android/exsettings/DataUsageSummary;)Lcom/android/exsettings/widget/ChartDataUsageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exsettings/widget/ChartDataUsageView;->getInspectEnd()J

    move-result-wide v4

    # getter for: Lcom/android/exsettings/DataUsageSummary;->mSelectLeft:[J
    invoke-static {}, Lcom/android/exsettings/DataUsageSummary;->access$600()[J

    move-result-object v6

    aget-wide v6, v6, v0

    # getter for: Lcom/android/exsettings/DataUsageSummary;->mSelectRight:[J
    invoke-static {}, Lcom/android/exsettings/DataUsageSummary;->access$700()[J

    move-result-object v8

    aget-wide v8, v8, v0

    invoke-virtual/range {v1 .. v9}, Lcom/android/exsettings/widget/ChartDataUsageView;->setVisibleRange(JJJJ)V

    .line 911
    .end local v0    # "tabIndex":I
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$4;->this$0:Lcom/android/exsettings/DataUsageSummary;

    # invokes: Lcom/android/exsettings/DataUsageSummary;->updateBody()V
    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->access$100(Lcom/android/exsettings/DataUsageSummary;)V

    .line 912
    return-void
.end method
