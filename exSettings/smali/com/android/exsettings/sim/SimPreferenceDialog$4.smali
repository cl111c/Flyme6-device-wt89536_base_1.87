.class Lcom/android/exsettings/sim/SimPreferenceDialog$4;
.super Ljava/lang/Object;
.source "SimPreferenceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/sim/SimPreferenceDialog;->createEditDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/sim/SimPreferenceDialog;


# direct methods
.method constructor <init>(Lcom/android/exsettings/sim/SimPreferenceDialog;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/exsettings/sim/SimPreferenceDialog$4;->this$0:Lcom/android/exsettings/sim/SimPreferenceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/exsettings/sim/SimPreferenceDialog$4;->this$0:Lcom/android/exsettings/sim/SimPreferenceDialog;

    invoke-virtual {v0}, Lcom/android/exsettings/sim/SimPreferenceDialog;->finish()V

    .line 189
    return-void
.end method
