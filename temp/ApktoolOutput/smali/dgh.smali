.class final Ldgh;
.super Ljava/lang/Object;
.source "GalleryPagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Ldgg;


# direct methods
.method constructor <init>(Ldgg;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Ldgh;->a:Ldgg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Ldgh;->a:Ldgg;

    iget-object v0, v0, Ldgg;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Ldgh;->a:Ldgg;

    iget-object v0, v0, Ldgg;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 48
    :cond_0
    return-void
.end method
