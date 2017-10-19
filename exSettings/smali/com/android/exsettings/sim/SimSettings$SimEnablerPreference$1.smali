.class Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$1;
.super Ljava/lang/Object;
.source "SimSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;


# direct methods
.method constructor <init>(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)V
    .locals 0

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$1;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1162
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 1163
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$1;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    iget-object v1, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$1;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    iget-object v1, v1, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/exsettings/sim/SimSettings;->access$2300(Lcom/android/exsettings/sim/SimSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    # invokes: Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V
    invoke-static {v0, v1}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->access$2500(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;Landroid/app/Dialog;)V

    .line 1164
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$1;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    # invokes: Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->sendUiccProvisioningRequest()V
    invoke-static {v0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->access$2600(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)V

    .line 1170
    :cond_0
    :goto_0
    return-void

    .line 1165
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_2

    .line 1166
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$1;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    invoke-virtual {v0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->update()V

    goto :goto_0

    .line 1167
    :cond_2
    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    .line 1168
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$1;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    invoke-virtual {v0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->update()V

    goto :goto_0
.end method
