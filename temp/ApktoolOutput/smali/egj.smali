.class final Legj;
.super Ljava/lang/Object;
.source "LauncherHome.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Legi;


# direct methods
.method constructor <init>(Legi;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Legj;->b:Legi;

    iput p2, p0, Legj;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Legj;->b:Legi;

    invoke-static {v0}, Legi;->a(Legi;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Legj;->b:Legi;

    invoke-static {v0}, Legi;->a(Legi;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Legj;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 72
    iget-object v0, p0, Legj;->b:Legi;

    iget v1, p0, Legj;->a:I

    invoke-static {v0, v1}, Legi;->a(Legi;I)V

    .line 74
    :cond_0
    return-void
.end method
