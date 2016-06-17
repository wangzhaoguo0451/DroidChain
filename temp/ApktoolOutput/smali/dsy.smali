.class public final Ldsy;
.super Ljava/lang/Object;
.source "LocalFeedManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ldtb;

.field private synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ldtb;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Ldsy;->a:Ldtb;

    iput-object p2, p0, Ldsy;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 92
    iget-object v3, p0, Ldsy;->a:Ldtb;

    iget-object v0, p0, Ldsy;->b:Ljava/lang/String;

    const-string v1, "SelfUpdateFeed"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_0
    iget-object v0, v3, Ldtb;->a:Lcom/wandoujia/jupiter/fragment/StartPageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/fragment/StartPageFragment;->b(Lcom/wandoujia/jupiter/fragment/StartPageFragment;)Leqw;

    move-result-object v0

    invoke-virtual {v0}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, v3, Ldtb;->a:Lcom/wandoujia/jupiter/fragment/StartPageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/fragment/StartPageFragment;->c(Lcom/wandoujia/jupiter/fragment/StartPageFragment;)Leqw;

    move-result-object v0

    invoke-virtual {v0, v1}, Leqw;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v5, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->SELF_UPDATE:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-ne v0, v5, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_2

    add-int/lit8 v0, v1, -0x1

    sub-int/2addr v0, v2

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v5, v3, Ldtb;->a:Lcom/wandoujia/jupiter/fragment/StartPageFragment;

    invoke-static {v5}, Lcom/wandoujia/jupiter/fragment/StartPageFragment;->d(Lcom/wandoujia/jupiter/fragment/StartPageFragment;)Leqw;

    move-result-object v5

    invoke-virtual {v5, v0}, Leqw;->b(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 93
    :cond_2
    return-void
.end method
