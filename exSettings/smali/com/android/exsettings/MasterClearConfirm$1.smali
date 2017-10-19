.class Lcom/android/exsettings/MasterClearConfirm$1;
.super Landroid/content/BroadcastReceiver;
.source "MasterClearConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/MasterClearConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/MasterClearConfirm;


# direct methods
.method constructor <init>(Lcom/android/exsettings/MasterClearConfirm;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/exsettings/MasterClearConfirm$1;->this$0:Lcom/android/exsettings/MasterClearConfirm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 78
    const-string v7, "level"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 79
    .local v2, "level":I
    const-string v7, "plugged"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 80
    .local v4, "plugged":I
    const-string v7, "invalid_charger"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 83
    .local v1, "invalidCharger":I
    const/16 v7, 0x1e

    if-lt v2, v7, :cond_1

    move v3, v5

    .line 84
    .local v3, "levelOk":Z
    :goto_0
    and-int/lit8 v7, v4, 0x7

    if-eqz v7, :cond_2

    if-nez v1, :cond_2

    .line 87
    .local v5, "pluggedOk":Z
    :goto_1
    iget-object v7, p0, Lcom/android/exsettings/MasterClearConfirm$1;->this$0:Lcom/android/exsettings/MasterClearConfirm;

    # getter for: Lcom/android/exsettings/MasterClearConfirm;->mButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/android/exsettings/MasterClearConfirm;->access$000(Lcom/android/exsettings/MasterClearConfirm;)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 88
    iget-object v7, p0, Lcom/android/exsettings/MasterClearConfirm$1;->this$0:Lcom/android/exsettings/MasterClearConfirm;

    # getter for: Lcom/android/exsettings/MasterClearConfirm;->mConfirmMsg:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/exsettings/MasterClearConfirm;->access$100(Lcom/android/exsettings/MasterClearConfirm;)Landroid/widget/TextView;

    move-result-object v9

    if-eqz v3, :cond_3

    move v7, v6

    :goto_2
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object v7, p0, Lcom/android/exsettings/MasterClearConfirm$1;->this$0:Lcom/android/exsettings/MasterClearConfirm;

    # getter for: Lcom/android/exsettings/MasterClearConfirm;->mBatWarnning:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/exsettings/MasterClearConfirm;->access$200(Lcom/android/exsettings/MasterClearConfirm;)Landroid/widget/TextView;

    move-result-object v7

    if-eqz v3, :cond_4

    :goto_3
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    .end local v1    # "invalidCharger":I
    .end local v2    # "level":I
    .end local v3    # "levelOk":Z
    .end local v4    # "plugged":I
    .end local v5    # "pluggedOk":Z
    :cond_0
    return-void

    .restart local v1    # "invalidCharger":I
    .restart local v2    # "level":I
    .restart local v4    # "plugged":I
    :cond_1
    move v3, v6

    .line 83
    goto :goto_0

    .restart local v3    # "levelOk":Z
    :cond_2
    move v5, v6

    .line 84
    goto :goto_1

    .restart local v5    # "pluggedOk":Z
    :cond_3
    move v7, v8

    .line 88
    goto :goto_2

    :cond_4
    move v8, v6

    .line 89
    goto :goto_3
.end method
