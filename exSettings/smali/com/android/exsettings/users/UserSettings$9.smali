.class Lcom/android/exsettings/users/UserSettings$9;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/users/UserSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/users/UserSettings;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/android/exsettings/users/UserSettings$9;->this$0:Lcom/android/exsettings/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings$9;->this$0:Lcom/android/exsettings/users/UserSettings;

    # invokes: Lcom/android/exsettings/users/UserSettings;->launchChooseLockscreen()V
    invoke-static {v0}, Lcom/android/exsettings/users/UserSettings;->access$1400(Lcom/android/exsettings/users/UserSettings;)V

    .line 595
    return-void
.end method
