.class Lcom/android/exsettings/SettingsActivity$7;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/SettingsActivity;->setSearView(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/exsettings/SettingsActivity;)V
    .locals 0

    .prologue
    .line 1696
    iput-object p1, p0, Lcom/android/exsettings/SettingsActivity$7;->this$0:Lcom/android/exsettings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1701
    iget-object v0, p0, Lcom/android/exsettings/SettingsActivity$7;->this$0:Lcom/android/exsettings/SettingsActivity;

    # getter for: Lcom/android/exsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/exsettings/SettingsActivity;->access$400(Lcom/android/exsettings/SettingsActivity;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1702
    iget-object v0, p0, Lcom/android/exsettings/SettingsActivity$7;->this$0:Lcom/android/exsettings/SettingsActivity;

    # invokes: Lcom/android/exsettings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V
    invoke-static {v0}, Lcom/android/exsettings/SettingsActivity;->access$500(Lcom/android/exsettings/SettingsActivity;)V

    .line 1703
    return-void
.end method
