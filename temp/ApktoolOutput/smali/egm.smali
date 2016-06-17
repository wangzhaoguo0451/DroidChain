.class final Legm;
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
    .line 246
    iput-object p1, p0, Legm;->b:Legi;

    iput p2, p0, Legm;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 249
    iget-object v0, p0, Legm;->b:Legi;

    invoke-static {v0}, Legi;->a(Legi;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Legm;->b:Legi;

    iget v2, p0, Legm;->a:I

    invoke-static {v0, v2}, Legi;->b(Legi;I)Legp;

    move-result-object v2

    .line 254
    if-eqz v2, :cond_0

    .line 258
    iget v3, v2, Legp;->b:I

    .line 259
    iget-object v0, p0, Legm;->b:Legi;

    invoke-static {v0}, Legi;->h(Legi;)I

    move-result v0

    if-eq v0, v3, :cond_0

    move v0, v1

    .line 260
    :goto_1
    iget-object v4, v2, Legp;->d:Legh;

    invoke-virtual {v4}, Legh;->a()I

    move-result v4

    if-ge v0, v4, :cond_2

    iget-object v4, v2, Legp;->d:Legh;

    invoke-virtual {v4, v0}, Legh;->a(I)Legg;

    move-result-object v4

    invoke-virtual {v4}, Legg;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 261
    :cond_2
    iget-object v0, p0, Legm;->b:Legi;

    iget-object v2, p0, Legm;->b:Legi;

    invoke-static {v2}, Legi;->h(Legi;)I

    move-result v2

    invoke-static {v0, v2}, Legi;->d(Legi;I)Legp;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_3

    .line 263
    :goto_2
    iget-object v2, v0, Legp;->d:Legh;

    invoke-virtual {v2}, Legh;->a()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, v0, Legp;->d:Legh;

    invoke-virtual {v2, v1}, Legh;->a(I)Legg;

    move-result-object v2

    invoke-virtual {v2}, Legg;->b()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 265
    :cond_3
    iget-object v0, p0, Legm;->b:Legi;

    invoke-static {v0, v3}, Legi;->e(Legi;I)I

    .line 266
    iget-object v0, p0, Legm;->b:Legi;

    invoke-static {v0}, Legi;->i(Legi;)Lcom/wandoujia/launcher_base/launcher/view/SlidingTabDot;

    move-result-object v0

    iget v1, p0, Legm;->a:I

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher_base/launcher/view/SlidingTabDot;->setSelect(I)V

    .line 268
    iget-object v0, p0, Legm;->b:Legi;

    invoke-static {v0}, Legi;->j(Legi;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Legm;->b:Legi;

    invoke-static {v0}, Legi;->j(Legi;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lego;

    .line 270
    if-eqz v0, :cond_0

    .line 271
    iget v1, p0, Legm;->a:I

    invoke-interface {v0, v1}, Lego;->a(I)V

    goto :goto_0
.end method
