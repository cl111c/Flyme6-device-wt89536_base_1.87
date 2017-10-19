.class Lcom/android/exsettings/wakeup/GestureSettings$2;
.super Ljava/lang/Object;
.source "GestureSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wakeup/GestureSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wakeup/GestureSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wakeup/GestureSettings;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/exsettings/wakeup/GestureSettings$2;->this$0:Lcom/android/exsettings/wakeup/GestureSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings$2;->this$0:Lcom/android/exsettings/wakeup/GestureSettings;

    # getter for: Lcom/android/exsettings/wakeup/GestureSettings;->missTouchProof:Lcom/android/exsettings/SwitchPreferenceOnly;
    invoke-static {v0}, Lcom/android/exsettings/wakeup/GestureSettings;->access$400(Lcom/android/exsettings/wakeup/GestureSettings;)Lcom/android/exsettings/SwitchPreferenceOnly;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SwitchPreferenceOnly;->setChecked(Z)V

    .line 312
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings$2;->this$0:Lcom/android/exsettings/wakeup/GestureSettings;

    # invokes: Lcom/android/exsettings/wakeup/GestureSettings;->showDialog()V
    invoke-static {v0}, Lcom/android/exsettings/wakeup/GestureSettings;->access$500(Lcom/android/exsettings/wakeup/GestureSettings;)V

    .line 313
    return-void
.end method
