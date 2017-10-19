.class Lcom/android/exsettings/DisplaySettings$5;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/DisplaySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/DisplaySettings;)V
    .locals 0

    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/exsettings/DisplaySettings$5;->this$0:Lcom/android/exsettings/DisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/exsettings/DisplaySettings$5;->this$0:Lcom/android/exsettings/DisplaySettings;

    # getter for: Lcom/android/exsettings/DisplaySettings;->mFontSizePref:Lcom/android/exsettings/WarnedListPreference;
    invoke-static {v0}, Lcom/android/exsettings/DisplaySettings;->access$200(Lcom/android/exsettings/DisplaySettings;)Lcom/android/exsettings/WarnedListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exsettings/WarnedListPreference;->click()V

    .line 633
    return-void
.end method
