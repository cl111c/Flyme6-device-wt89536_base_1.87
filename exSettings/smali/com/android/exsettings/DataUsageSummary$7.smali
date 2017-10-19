.class Lcom/android/exsettings/DataUsageSummary$7;
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
    .line 1401
    iput-object p1, p0, Lcom/android/exsettings/DataUsageSummary$7;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1404
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$7;->this$0:Lcom/android/exsettings/DataUsageSummary;

    # getter for: Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->access$1400(Lcom/android/exsettings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1405
    .local v0, "disableAtLimit":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1408
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$7;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary$ConfirmLimitFragment;->show(Lcom/android/exsettings/DataUsageSummary;)V

    .line 1412
    :goto_1
    return-void

    .line 1404
    .end local v0    # "disableAtLimit":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1410
    .restart local v0    # "disableAtLimit":Z
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$7;->this$0:Lcom/android/exsettings/DataUsageSummary;

    const-wide/16 v2, -0x1

    # invokes: Lcom/android/exsettings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v1, v2, v3}, Lcom/android/exsettings/DataUsageSummary;->access$1500(Lcom/android/exsettings/DataUsageSummary;J)V

    goto :goto_1
.end method
