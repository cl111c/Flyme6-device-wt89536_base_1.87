.class Lcom/android/exsettings/LocksreenSettings$1;
.super Ljava/lang/Object;
.source "LocksreenSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/LocksreenSettings;->showLockSreenTypeStatusDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/LocksreenSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/LocksreenSettings;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/exsettings/LocksreenSettings$1;->this$0:Lcom/android/exsettings/LocksreenSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/exsettings/LocksreenSettings$1;->this$0:Lcom/android/exsettings/LocksreenSettings;

    iget-object v1, p0, Lcom/android/exsettings/LocksreenSettings$1;->this$0:Lcom/android/exsettings/LocksreenSettings;

    # getter for: Lcom/android/exsettings/LocksreenSettings;->locksreentypeIndex:I
    invoke-static {v1}, Lcom/android/exsettings/LocksreenSettings;->access$000(Lcom/android/exsettings/LocksreenSettings;)I

    move-result v1

    # invokes: Lcom/android/exsettings/LocksreenSettings;->clickLockSreenTypeOK(I)V
    invoke-static {v0, v1}, Lcom/android/exsettings/LocksreenSettings;->access$100(Lcom/android/exsettings/LocksreenSettings;I)V

    .line 234
    return-void
.end method
