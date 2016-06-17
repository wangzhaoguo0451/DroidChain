.class final Legk;
.super Ljava/lang/Object;
.source "LauncherHome.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Legi;


# direct methods
.method constructor <init>(Legi;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Legk;->a:Legi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .prologue
    .line 122
    iget-object v0, p0, Legk;->a:Legi;

    invoke-static {v0}, Legi;->a(Legi;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Legk;->a:Legi;

    invoke-static {v0}, Legi;->c(Legi;)Z

    .line 151
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Legk;->a:Legi;

    invoke-static {v0}, Legi;->a(Legi;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v8

    .line 127
    const/4 v1, 0x0

    .line 128
    const/4 v0, 0x0

    move v13, v0

    move v0, v1

    move v1, v13

    .line 129
    :goto_1
    iget-object v2, p0, Legk;->a:Legi;

    invoke-static {v2}, Legi;->d(Legi;)Legb;

    move-result-object v2

    invoke-virtual {v2}, Legb;->a()I

    move-result v2

    if-ge v0, v2, :cond_d

    .line 130
    iget-object v2, p0, Legk;->a:Legi;

    invoke-static {v2, v1}, Legi;->b(Legi;I)Legp;

    move-result-object v2

    .line 131
    if-nez v2, :cond_11

    .line 132
    iget-object v2, p0, Legk;->a:Legi;

    invoke-static {v2}, Legi;->e(Legi;)Legp;

    move-result-object v2

    move-object v3, v2

    .line 134
    :goto_2
    iget-object v2, p0, Legk;->a:Legi;

    invoke-static {v2}, Legi;->d(Legi;)Legb;

    move-result-object v9

    new-instance v10, Legh;

    invoke-direct {v10}, Legh;-><init>()V

    invoke-virtual {v9}, Legb;->a()I

    move-result v5

    move v4, v0

    :goto_3
    if-ge v4, v5, :cond_10

    if-ltz v4, :cond_4

    invoke-virtual {v9}, Legb;->a()I

    move-result v0

    if-ge v4, v0, :cond_4

    iget-object v0, v9, Legb;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Legg;

    move-object v7, v0

    :goto_4
    if-eqz v7, :cond_1

    iget-object v0, v7, Legg;->e:Lehw;

    if-nez v0, :cond_5

    :cond_1
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_9

    iget v2, v7, Legg;->c:I

    const/4 v6, -0x2

    if-ne v2, v6, :cond_2

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-nez v2, :cond_2

    const/4 v0, 0x0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v10, v7, v0}, Legh;->a(Legg;Landroid/graphics/Point;)V

    :cond_3
    iput-object v0, v7, Legg;->d:Landroid/graphics/Point;

    iget-object v0, v10, Legh;->d:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_6
    if-nez v0, :cond_a

    move v2, v4

    :goto_7
    invoke-virtual {v10}, Legh;->a()I

    move-result v4

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v4, :cond_b

    invoke-virtual {v10, v0}, Legh;->a(I)Legg;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_4
    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_4

    :cond_5
    invoke-virtual {v7, v10}, Legg;->a(Legh;)V

    iget-object v6, v7, Legg;->e:Lehw;

    if-eqz v6, :cond_8

    const/4 v0, 0x0

    :goto_9
    iget v2, v10, Legh;->b:I

    iget v11, v6, Lehw;->b:I

    sub-int/2addr v2, v11

    if-gt v0, v2, :cond_8

    const/4 v2, 0x0

    :goto_a
    iget v11, v10, Legh;->a:I

    iget v12, v6, Lehw;->a:I

    sub-int/2addr v11, v12

    if-gt v2, v11, :cond_7

    iget-object v11, v10, Legh;->c:[[I

    aget-object v11, v11, v0

    aget v11, v11, v2

    const/4 v12, -0x2

    if-eq v11, v12, :cond_7

    iget-object v11, v10, Legh;->c:[[I

    aget-object v11, v11, v0

    aget v11, v11, v2

    const/4 v12, -0x1

    if-ne v11, v12, :cond_6

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    move-object v0, v6

    goto :goto_5

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    goto :goto_6

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_b
    iput-object v10, v3, Legp;->d:Legh;

    iget-object v0, v3, Legp;->f:Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;

    if-eqz v0, :cond_c

    iget-object v0, v3, Legp;->f:Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;

    iget-object v4, v3, Legp;->d:Legh;

    invoke-virtual {v0, v4}, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->setAdapter(Legh;)V

    iget-object v0, v3, Legp;->f:Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;

    invoke-virtual {v0}, Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;->a()V

    .line 135
    :cond_c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    .line 136
    goto/16 :goto_1

    .line 138
    :cond_d
    iget-object v0, p0, Legk;->a:Legi;

    invoke-static {v0}, Legi;->f(Legi;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 139
    if-ge v1, v0, :cond_e

    .line 140
    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-lt v0, v1, :cond_e

    .line 141
    iget-object v2, p0, Legk;->a:Legi;

    invoke-static {v2, v0}, Legi;->c(Legi;I)Z

    .line 140
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 145
    :cond_e
    iget-object v0, p0, Legk;->a:Legi;

    invoke-static {v0}, Legi;->g(Legi;)I

    move-result v0

    if-lt v8, v0, :cond_f

    .line 146
    iget-object v0, p0, Legk;->a:Legi;

    invoke-static {v0}, Legi;->g(Legi;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 147
    iget-object v1, p0, Legk;->a:Legi;

    invoke-static {v1}, Legi;->a(Legi;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 150
    :cond_f
    iget-object v0, p0, Legk;->a:Legi;

    invoke-static {v0}, Legi;->c(Legi;)Z

    goto/16 :goto_0

    :cond_10
    move v2, v5

    goto/16 :goto_7

    :cond_11
    move-object v3, v2

    goto/16 :goto_2
.end method
