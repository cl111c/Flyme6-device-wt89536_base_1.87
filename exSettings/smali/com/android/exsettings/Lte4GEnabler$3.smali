.class Lcom/android/exsettings/Lte4GEnabler$3;
.super Ljava/lang/Object;
.source "Lte4GEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/Lte4GEnabler;->promptUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/Lte4GEnabler;


# direct methods
.method constructor <init>(Lcom/android/exsettings/Lte4GEnabler;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/exsettings/Lte4GEnabler$3;->this$0:Lcom/android/exsettings/Lte4GEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/exsettings/Lte4GEnabler$3;->this$0:Lcom/android/exsettings/Lte4GEnabler;

    # getter for: Lcom/android/exsettings/Lte4GEnabler;->mDialogClicked:Z
    invoke-static {v0}, Lcom/android/exsettings/Lte4GEnabler;->access$200(Lcom/android/exsettings/Lte4GEnabler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/exsettings/Lte4GEnabler$3;->this$0:Lcom/android/exsettings/Lte4GEnabler;

    # getter for: Lcom/android/exsettings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/exsettings/Lte4GEnabler;->access$300(Lcom/android/exsettings/Lte4GEnabler;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 169
    :cond_0
    return-void
.end method
