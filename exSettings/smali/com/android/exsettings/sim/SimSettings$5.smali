.class Lcom/android/exsettings/sim/SimSettings$5;
.super Ljava/lang/Object;
.source "SimSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/sim/SimSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/sim/SimSettings;)V
    .locals 0

    .prologue
    .line 651
    iput-object p1, p0, Lcom/android/exsettings/sim/SimSettings$5;->this$0:Lcom/android/exsettings/sim/SimSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "value"    # I

    .prologue
    .line 654
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings$5;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/exsettings/sim/SimSettings;->access$700(Lcom/android/exsettings/sim/SimSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "config_current_primary_sub"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 656
    .local v1, "primarySlot":I
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings$5;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->selectValue:I
    invoke-static {v2}, Lcom/android/exsettings/sim/SimSettings;->access$400(Lcom/android/exsettings/sim/SimSettings;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 657
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 658
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.ACTION_SET_PRIMARY_CARD"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    const-string v2, "primary_slot"

    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$5;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->selectValue:I
    invoke-static {v3}, Lcom/android/exsettings/sim/SimSettings;->access$400(Lcom/android/exsettings/sim/SimSettings;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 660
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings$5;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/exsettings/sim/SimSettings;->access$700(Lcom/android/exsettings/sim/SimSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 661
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings$5;->this$0:Lcom/android/exsettings/sim/SimSettings;

    const/4 v3, 0x1

    # setter for: Lcom/android/exsettings/sim/SimSettings;->dataChange:Z
    invoke-static {v2, v3}, Lcom/android/exsettings/sim/SimSettings;->access$902(Lcom/android/exsettings/sim/SimSettings;Z)Z

    .line 663
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
