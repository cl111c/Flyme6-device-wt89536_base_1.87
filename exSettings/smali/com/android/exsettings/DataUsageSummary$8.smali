.class Lcom/android/exsettings/DataUsageSummary$8;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1415
    iput-object p1, p0, Lcom/android/exsettings/DataUsageSummary$8;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1418
    iget-object v2, p0, Lcom/android/exsettings/DataUsageSummary$8;->this$0:Lcom/android/exsettings/DataUsageSummary;

    # getter for: Lcom/android/exsettings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/exsettings/DataUsageSummary;->access$1600(Lcom/android/exsettings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 1420
    .local v0, "restrictBackground":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1424
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$8;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary$ConfirmAppRestrictFragment;->show(Lcom/android/exsettings/DataUsageSummary;)V

    .line 1428
    :goto_1
    return-void

    .end local v0    # "restrictBackground":Z
    :cond_0
    move v0, v1

    .line 1418
    goto :goto_0

    .line 1426
    .restart local v0    # "restrictBackground":Z
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/DataUsageSummary$8;->this$0:Lcom/android/exsettings/DataUsageSummary;

    # invokes: Lcom/android/exsettings/DataUsageSummary;->setAppRestrictBackground(Z)V
    invoke-static {v2, v1}, Lcom/android/exsettings/DataUsageSummary;->access$1700(Lcom/android/exsettings/DataUsageSummary;Z)V

    goto :goto_1
.end method
