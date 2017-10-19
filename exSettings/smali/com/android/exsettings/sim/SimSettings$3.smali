.class Lcom/android/exsettings/sim/SimSettings$3;
.super Ljava/lang/Object;
.source "SimSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/sim/SimSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/sim/SimSettings;)V
    .locals 0

    .prologue
    .line 626
    iput-object p1, p0, Lcom/android/exsettings/sim/SimSettings$3;->this$0:Lcom/android/exsettings/sim/SimSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings$3;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # setter for: Lcom/android/exsettings/sim/SimSettings;->selectValue:I
    invoke-static {v0, p2}, Lcom/android/exsettings/sim/SimSettings;->access$402(Lcom/android/exsettings/sim/SimSettings;I)I

    .line 630
    return-void
.end method
