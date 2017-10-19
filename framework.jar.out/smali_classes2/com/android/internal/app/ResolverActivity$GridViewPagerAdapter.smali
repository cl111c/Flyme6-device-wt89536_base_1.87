.class public Lcom/android/internal/app/ResolverActivity$GridViewPagerAdapter;
.super Lcom/android/internal/widget/PagerAdapter;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridViewPagerAdapter"
.end annotation


# instance fields
.field private array:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/GridView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/GridView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2130
    .local p3, "array":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridView;>;"
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$GridViewPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Lcom/android/internal/widget/PagerAdapter;-><init>()V

    .line 2131
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$GridViewPagerAdapter;->array:Ljava/util/List;

    .line 2132
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 2160
    check-cast p1, Lcom/android/internal/widget/ViewPager;

    .end local p1    # "arg0":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "arg2":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/ViewPager;->removeView(Landroid/view/View;)V

    .line 2161
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 2137
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$GridViewPagerAdapter;->array:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # I

    .prologue
    .line 2149
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$GridViewPagerAdapter;->array:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2150
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 2151
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$GridViewPagerAdapter;->array:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2154
    :cond_0
    check-cast p1, Lcom/android/internal/widget/ViewPager;

    .end local p1    # "arg0":Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$GridViewPagerAdapter;->array:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/ViewPager;->addView(Landroid/view/View;)V

    .line 2155
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$GridViewPagerAdapter;->array:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 2143
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
