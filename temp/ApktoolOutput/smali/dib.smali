.class final Ldib;
.super Lhhl;
.source "FavoriteFragment.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 2
    .parameter

    .prologue
    .line 47
    sget-object v0, Lham;->f:Lham;

    const-string v1, "navigation"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->a(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x0

    return v0
.end method
