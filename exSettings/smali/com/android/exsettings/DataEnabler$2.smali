.class Lcom/android/exsettings/DataEnabler$2;
.super Ljava/lang/Object;
.source "DataEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/DataEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/DataEnabler;


# direct methods
.method constructor <init>(Lcom/android/exsettings/DataEnabler;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/exsettings/DataEnabler$2;->this$0:Lcom/android/exsettings/DataEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/exsettings/DataEnabler$2;->this$0:Lcom/android/exsettings/DataEnabler;

    iget-object v1, p0, Lcom/android/exsettings/DataEnabler$2;->this$0:Lcom/android/exsettings/DataEnabler;

    # getter for: Lcom/android/exsettings/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/exsettings/DataEnabler;->access$500(Lcom/android/exsettings/DataEnabler;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    # invokes: Lcom/android/exsettings/DataEnabler;->setMobileDataEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/exsettings/DataEnabler;->access$600(Lcom/android/exsettings/DataEnabler;Z)V

    .line 160
    return-void
.end method
