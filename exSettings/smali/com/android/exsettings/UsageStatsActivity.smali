.class public Lcom/android/exsettings/UsageStatsActivity;
.super Landroid/app/Activity;
.source "UsageStatsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/UsageStatsActivity$UsageStatsAdapter;,
        Lcom/android/exsettings/UsageStatsActivity$AppViewHolder;,
        Lcom/android/exsettings/UsageStatsActivity$UsageTimeComparator;,
        Lcom/android/exsettings/UsageStatsActivity$LastTimeUsedComparator;,
        Lcom/android/exsettings/UsageStatsActivity$AppNameComparator;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/exsettings/UsageStatsActivity$UsageStatsAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mUsageStatsManager:Landroid/app/usage/UsageStatsManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/UsageStatsActivity;)Landroid/app/usage/UsageStatsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/UsageStatsActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/exsettings/UsageStatsActivity;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exsettings/UsageStatsActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/UsageStatsActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/exsettings/UsageStatsActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exsettings/UsageStatsActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/UsageStatsActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/exsettings/UsageStatsActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 232
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 233
    const v2, 0x7f040128

    invoke-virtual {p0, v2}, Lcom/android/exsettings/UsageStatsActivity;->setContentView(I)V

    .line 235
    const-string v2, "usagestats"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/UsageStatsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManager;

    iput-object v2, p0, Lcom/android/exsettings/UsageStatsActivity;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    .line 236
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/UsageStatsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/exsettings/UsageStatsActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 237
    invoke-virtual {p0}, Lcom/android/exsettings/UsageStatsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/UsageStatsActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 239
    const v2, 0x7f120232

    invoke-virtual {p0, v2}, Lcom/android/exsettings/UsageStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 240
    .local v1, "typeSpinner":Landroid/widget/Spinner;
    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 242
    const v2, 0x7f120233

    invoke-virtual {p0, v2}, Lcom/android/exsettings/UsageStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 243
    .local v0, "listView":Landroid/widget/ListView;
    new-instance v2, Lcom/android/exsettings/UsageStatsActivity$UsageStatsAdapter;

    invoke-direct {v2, p0}, Lcom/android/exsettings/UsageStatsActivity$UsageStatsAdapter;-><init>(Lcom/android/exsettings/UsageStatsActivity;)V

    iput-object v2, p0, Lcom/android/exsettings/UsageStatsActivity;->mAdapter:Lcom/android/exsettings/UsageStatsActivity$UsageStatsAdapter;

    .line 244
    iget-object v2, p0, Lcom/android/exsettings/UsageStatsActivity;->mAdapter:Lcom/android/exsettings/UsageStatsActivity$UsageStatsAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 245
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/exsettings/UsageStatsActivity;->mAdapter:Lcom/android/exsettings/UsageStatsActivity$UsageStatsAdapter;

    invoke-virtual {v0, p3}, Lcom/android/exsettings/UsageStatsActivity$UsageStatsAdapter;->sortList(I)V

    .line 250
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
