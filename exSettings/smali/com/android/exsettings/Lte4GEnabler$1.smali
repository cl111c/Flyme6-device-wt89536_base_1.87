.class Lcom/android/exsettings/Lte4GEnabler$1;
.super Ljava/lang/Object;
.source "Lte4GEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 156
    iput-object p1, p0, Lcom/android/exsettings/Lte4GEnabler$1;->this$0:Lcom/android/exsettings/Lte4GEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/exsettings/Lte4GEnabler$1;->this$0:Lcom/android/exsettings/Lte4GEnabler;

    # invokes: Lcom/android/exsettings/Lte4GEnabler;->setPrefNetwork()V
    invoke-static {v0}, Lcom/android/exsettings/Lte4GEnabler;->access$100(Lcom/android/exsettings/Lte4GEnabler;)V

    .line 161
    iget-object v0, p0, Lcom/android/exsettings/Lte4GEnabler$1;->this$0:Lcom/android/exsettings/Lte4GEnabler;

    const/4 v1, 0x1

    # setter for: Lcom/android/exsettings/Lte4GEnabler;->mDialogClicked:Z
    invoke-static {v0, v1}, Lcom/android/exsettings/Lte4GEnabler;->access$202(Lcom/android/exsettings/Lte4GEnabler;Z)Z

    .line 162
    return-void
.end method
