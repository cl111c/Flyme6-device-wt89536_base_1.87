.class Lcom/android/exsettings/users/RestrictedProfileSettings$1;
.super Ljava/lang/Object;
.source "RestrictedProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/users/RestrictedProfileSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/users/RestrictedProfileSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/users/RestrictedProfileSettings;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/exsettings/users/RestrictedProfileSettings$1;->this$0:Lcom/android/exsettings/users/RestrictedProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/exsettings/users/RestrictedProfileSettings$1;->this$0:Lcom/android/exsettings/users/RestrictedProfileSettings;

    # invokes: Lcom/android/exsettings/users/RestrictedProfileSettings;->removeUser()V
    invoke-static {v0}, Lcom/android/exsettings/users/RestrictedProfileSettings;->access$000(Lcom/android/exsettings/users/RestrictedProfileSettings;)V

    .line 129
    return-void
.end method