.class public final Legl;
.super Lgf;
.source "LauncherHome.java"


# instance fields
.field private synthetic b:Legi;


# direct methods
.method public constructor <init>(Legi;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Legl;->b:Legi;

    invoke-direct {p0}, Lgf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    .line 187
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 188
    check-cast p1, Landroid/view/View;

    .line 189
    sget v0, Legp;->a:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 190
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 191
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 192
    iget-object v1, p0, Legl;->b:Legi;

    invoke-static {v1, v0}, Legi;->d(Legi;I)Legp;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    .line 194
    iget v0, v0, Legp;->c:I

    .line 198
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Legl;->b:Legi;

    invoke-static {v0, p2}, Legi;->b(Legi;I)Legp;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_1

    .line 163
    iget-object v0, v1, Legp;->e:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lcom/wandoujia/launcher_base/R$layout;->launcher_page_fragment:I

    invoke-static {p1, v0}, Lehx;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Legp;->e:Landroid/view/View;

    iget-object v0, v1, Legp;->e:Landroid/view/View;

    sget v2, Lcom/wandoujia/launcher_base/R$id;->launcher_grid:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;

    iput-object v0, v1, Legp;->f:Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;

    iget-object v0, v1, Legp;->f:Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;

    iget-object v2, v1, Legp;->d:Legh;

    invoke-virtual {v0, v2}, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->setAdapter(Legh;)V

    iget-object v0, v1, Legp;->f:Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;

    invoke-virtual {v0}, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->a()V

    iget-object v0, v1, Legp;->e:Landroid/view/View;

    sget v2, Legp;->a:I

    iget v3, v1, Legp;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, v1, Legp;->e:Landroid/view/View;

    .line 164
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 167
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 173
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 177
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Legl;->b:Legi;

    invoke-static {v0}, Legi;->g(Legi;)I

    move-result v0

    return v0
.end method
