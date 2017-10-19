.class Lcom/android/exsettings/MasterClear$2;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/MasterClear;->establishInitialState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/MasterClear;


# direct methods
.method constructor <init>(Lcom/android/exsettings/MasterClear;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/exsettings/MasterClear$2;->this$0:Lcom/android/exsettings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/exsettings/MasterClear$2;->this$0:Lcom/android/exsettings/MasterClear;

    # getter for: Lcom/android/exsettings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/exsettings/MasterClear;->access$200(Lcom/android/exsettings/MasterClear;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 172
    return-void
.end method
