.class Lcom/android/exsettings/DevelopmentSettings$1;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/DevelopmentSettings;->confirmEnableOemUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/DevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/DevelopmentSettings;)V
    .locals 0

    .prologue
    .line 1518
    iput-object p1, p0, Lcom/android/exsettings/DevelopmentSettings$1;->this$0:Lcom/android/exsettings/DevelopmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings$1;->this$0:Lcom/android/exsettings/DevelopmentSettings;

    invoke-virtual {v0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/exsettings/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    .line 1522
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings$1;->this$0:Lcom/android/exsettings/DevelopmentSettings;

    # invokes: Lcom/android/exsettings/DevelopmentSettings;->updateAllOptions()V
    invoke-static {v0}, Lcom/android/exsettings/DevelopmentSettings;->access$000(Lcom/android/exsettings/DevelopmentSettings;)V

    .line 1523
    return-void
.end method
