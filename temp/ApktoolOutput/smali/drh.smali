.class public final Ldrh;
.super Ljava/lang/Object;
.source "DetailProcessor.java"

# interfaces
.implements Leqx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leqx",
        "<",
        "Lcom/wandoujia/ripple_framework/model/Model;",
        ">;"
    }
.end annotation


# static fields
.field private static a:F

.field private static b:F

.field private static c:F

.field private static d:F


# instance fields
.field private e:Lcom/wandoujia/api/proto/AppDetail;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/wandoujia/api/proto/AppDetail;Z)Lcom/wandoujia/ripple_framework/model/Model;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 355
    new-instance v0, Lcom/wandoujia/ripple_framework/model/Model;

    new-instance v1, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v1}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->editor_comment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->description(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->SINGLE_TEXT:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v1, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    .line 359
    const v1, 0x7f0c0029

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/ripple_framework/model/Model;->a(ILjava/lang/Object;)V

    .line 360
    return-object v0
.end method

.method private static a(Lcom/wandoujia/api/proto/StoryParagraph;Ljava/util/List;)Lcom/wandoujia/ripple_framework/model/Model;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/api/proto/StoryParagraph;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/wandoujia/ripple_framework/model/Model;"
        }
    .end annotation

    .prologue
    .line 516
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 517
    iget-object v0, p0, Lcom/wandoujia/api/proto/StoryParagraph;->item:Lcom/wandoujia/api/proto/ParagraphContent;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ParagraphContent;->image:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/Image;

    .line 518
    invoke-static {}, Ldrh;->b()V

    .line 519
    new-instance v3, Lcom/wandoujia/api/proto/Image$Builder;

    invoke-direct {v3}, Lcom/wandoujia/api/proto/Image$Builder;-><init>()V

    iget-object v4, v0, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/wandoujia/api/proto/Image$Builder;->url(Ljava/lang/String;)Lcom/wandoujia/api/proto/Image$Builder;

    move-result-object v3

    sget v4, Ldrh;->b:F

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wandoujia/api/proto/Image$Builder;->width(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Image$Builder;

    move-result-object v3

    .line 521
    iget-object v4, v0, Lcom/wandoujia/api/proto/Image;->height:Ljava/lang/Integer;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/wandoujia/api/proto/Image;->width:Ljava/lang/Integer;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/wandoujia/api/proto/Image;->width:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_1

    .line 522
    :cond_0
    sget v4, Ldrh;->d:F

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wandoujia/api/proto/Image$Builder;->height(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Image$Builder;

    .line 526
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 527
    invoke-virtual {v3}, Lcom/wandoujia/api/proto/Image$Builder;->build()Lcom/wandoujia/api/proto/Image;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    new-instance v3, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v3}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    sget-object v5, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v3, v5}, Lcom/wandoujia/api/proto/Entity$Builder;->content_type(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v3

    sget-object v5, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->SINGLE_IMAGE:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v3, v5}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/wandoujia/api/proto/Entity$Builder;->cover(Ljava/util/List;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v3

    new-instance v4, Lcom/wandoujia/api/proto/Action$Builder;

    invoke-direct {v4}, Lcom/wandoujia/api/proto/Action$Builder;-><init>()V

    iget-object v0, v0, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerActivity;->a(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/wandoujia/api/proto/Action$Builder;->intent(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Action$Builder;->build()Lcom/wandoujia/api/proto/Action;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/wandoujia/api/proto/Entity$Builder;->action_positive(Lcom/wandoujia/api/proto/Action;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 524
    :cond_1
    iget-object v4, v0, Lcom/wandoujia/api/proto/Image;->height:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    sget v5, Ldrh;->b:F

    mul-float/2addr v4, v5

    iget-object v5, v0, Lcom/wandoujia/api/proto/Image;->width:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wandoujia/api/proto/Image$Builder;->height(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Image$Builder;

    goto :goto_1

    .line 538
    :cond_2
    new-instance v0, Lcom/wandoujia/ripple_framework/model/Model;

    new-instance v2, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v2}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    sget-object v3, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->content_type(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->GRID:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/wandoujia/api/proto/StoryParagraph;->item:Lcom/wandoujia/api/proto/ParagraphContent;

    iget-object v3, v3, Lcom/wandoujia/api/proto/ParagraphContent;->image:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->cover(Ljava/util/List;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/wandoujia/api/proto/Entity$Builder;->sub_entity(Ljava/util/List;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    return-object v0
.end method

.method private static a(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/ripple_framework/model/Model;
    .locals 2
    .parameter

    .prologue
    .line 349
    new-instance v0, Lcom/wandoujia/ripple_framework/model/Model;

    new-instance v1, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v1}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    invoke-virtual {v1, p0}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    return-object v0
.end method

.method private static a(Lcom/wandoujia/api/proto/ReviewBean;)Ljava/util/List;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/api/proto/ReviewBean;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 416
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 417
    iget-object v0, p0, Lcom/wandoujia/api/proto/ReviewBean;->story:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/StoryParagraph;

    .line 418
    if-eqz v0, :cond_0

    sget-object v4, Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;->IMAGE:Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;

    invoke-virtual {v4}, Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/wandoujia/api/proto/StoryParagraph;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/wandoujia/api/proto/StoryParagraph;->item:Lcom/wandoujia/api/proto/ParagraphContent;

    iget-object v4, v4, Lcom/wandoujia/api/proto/ParagraphContent;->image:Ljava/util/List;

    invoke-static {v4}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 422
    iget-object v0, v0, Lcom/wandoujia/api/proto/StoryParagraph;->item:Lcom/wandoujia/api/proto/ParagraphContent;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ParagraphContent;->image:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/Image;

    .line 425
    iget-object v5, v0, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 426
    iget-object v0, v0, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 431
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/api/proto/ReviewBean;->story:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/StoryParagraph;

    .line 432
    if-eqz v0, :cond_3

    .line 433
    sget-object v4, Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;->IMAGE:Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;

    invoke-virtual {v4}, Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/wandoujia/api/proto/StoryParagraph;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 437
    iget-object v4, v0, Lcom/wandoujia/api/proto/StoryParagraph;->item:Lcom/wandoujia/api/proto/ParagraphContent;

    iget-object v4, v4, Lcom/wandoujia/api/proto/ParagraphContent;->image:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 438
    invoke-static {}, Ldrh;->b()V

    iget-object v0, v0, Lcom/wandoujia/api/proto/StoryParagraph;->item:Lcom/wandoujia/api/proto/ParagraphContent;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ParagraphContent;->image:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/Image;

    new-instance v4, Lcom/wandoujia/api/proto/Image$Builder;

    invoke-direct {v4}, Lcom/wandoujia/api/proto/Image$Builder;-><init>()V

    iget-object v5, v0, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/wandoujia/api/proto/Image$Builder;->url(Ljava/lang/String;)Lcom/wandoujia/api/proto/Image$Builder;

    move-result-object v4

    sget v5, Ldrh;->a:F

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wandoujia/api/proto/Image$Builder;->width(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Image$Builder;

    move-result-object v4

    iget-object v5, v0, Lcom/wandoujia/api/proto/Image;->height:Ljava/lang/Integer;

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/wandoujia/api/proto/Image;->width:Ljava/lang/Integer;

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/wandoujia/api/proto/Image;->width:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    sget v5, Ldrh;->c:F

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wandoujia/api/proto/Image$Builder;->height(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Image$Builder;

    :goto_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Lcom/wandoujia/api/proto/Image$Builder;->build()Lcom/wandoujia/api/proto/Image;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/wandoujia/ripple_framework/model/Model;

    new-instance v6, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v6}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    sget-object v7, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v6, v7}, Lcom/wandoujia/api/proto/Entity$Builder;->content_type(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v6

    sget-object v7, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->SINGLE_IMAGE:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v6, v7}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/wandoujia/api/proto/Entity$Builder;->cover(Ljava/util/List;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v5

    new-instance v6, Lcom/wandoujia/api/proto/Action$Builder;

    invoke-direct {v6}, Lcom/wandoujia/api/proto/Action$Builder;-><init>()V

    iget-object v0, v0, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v2, v0}, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerActivity;->a(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/wandoujia/api/proto/Action$Builder;->intent(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Action$Builder;->build()Lcom/wandoujia/api/proto/Action;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/wandoujia/api/proto/Entity$Builder;->action_positive(Lcom/wandoujia/api/proto/Action;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    iget-object v5, v0, Lcom/wandoujia/api/proto/Image;->height:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    sget v6, Ldrh;->a:F

    mul-float/2addr v5, v6

    iget-object v6, v0, Lcom/wandoujia/api/proto/Image;->width:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wandoujia/api/proto/Image$Builder;->height(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Image$Builder;

    goto :goto_2

    .line 440
    :cond_6
    invoke-static {v0, v2}, Ldrh;->a(Lcom/wandoujia/api/proto/StoryParagraph;Ljava/util/List;)Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 442
    :cond_7
    sget-object v4, Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;->TEXT:Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;

    invoke-virtual {v4}, Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/wandoujia/api/proto/StoryParagraph;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/wandoujia/api/proto/StoryParagraph;->item:Lcom/wandoujia/api/proto/ParagraphContent;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;->TITLE:Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;

    invoke-virtual {v4}, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/wandoujia/api/proto/StoryParagraph;->item:Lcom/wandoujia/api/proto/ParagraphContent;

    iget-object v5, v5, Lcom/wandoujia/api/proto/ParagraphContent;->text_style:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 446
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/wandoujia/ripple_framework/model/Model;

    new-instance v5, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v5}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    sget-object v6, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v5, v6}, Lcom/wandoujia/api/proto/Entity$Builder;->content_type(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v5

    sget-object v6, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->DETAIL_STORY_TEXT:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v5, v6}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v5

    new-instance v6, Lcom/wandoujia/api/proto/Detail$Builder;

    invoke-direct {v6}, Lcom/wandoujia/api/proto/Detail$Builder;-><init>()V

    new-instance v7, Lcom/wandoujia/api/proto/AppDetail$Builder;

    invoke-direct {v7}, Lcom/wandoujia/api/proto/AppDetail$Builder;-><init>()V

    new-instance v8, Lcom/wandoujia/api/proto/ReviewBean$Builder;

    invoke-direct {v8}, Lcom/wandoujia/api/proto/ReviewBean$Builder;-><init>()V

    invoke-virtual {v8, v4}, Lcom/wandoujia/api/proto/ReviewBean$Builder;->story(Ljava/util/List;)Lcom/wandoujia/api/proto/ReviewBean$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/api/proto/ReviewBean$Builder;->build()Lcom/wandoujia/api/proto/ReviewBean;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/wandoujia/api/proto/AppDetail$Builder;->review(Lcom/wandoujia/api/proto/ReviewBean;)Lcom/wandoujia/api/proto/AppDetail$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/api/proto/AppDetail$Builder;->build()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/wandoujia/api/proto/Detail$Builder;->app_detail(Lcom/wandoujia/api/proto/AppDetail;)Lcom/wandoujia/api/proto/Detail$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/api/proto/Detail$Builder;->build()Lcom/wandoujia/api/proto/Detail;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/wandoujia/api/proto/Entity$Builder;->detail(Lcom/wandoujia/api/proto/Detail;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 449
    :cond_8
    invoke-static {v1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 450
    new-instance v0, Lcom/wandoujia/ripple_framework/model/Model;

    new-instance v2, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v2}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    sget-object v3, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->COPYRIGHT_DIVIDER:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    :cond_9
    return-object v1
.end method

.method private static a(Lcom/wandoujia/ripple_framework/model/Model;)Ljava/util/List;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v5

    .line 112
    iget-object v0, v5, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v2

    sget-object v0, Lham;->f:Lham;

    const-string v4, "app"

    invoke-virtual {v0, v4}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager;

    iget-object v4, v2, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/wandoujia/appmanager/AppManager;->d(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getSize()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Lcom/wandoujia/base/utils/TextUtil;->formatSizeInfo(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "v"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u00b7 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/wandoujia/api/proto/ApkDetail$Builder;

    invoke-direct {v5}, Lcom/wandoujia/api/proto/ApkDetail$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getSize()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/wandoujia/api/proto/ApkDetail$Builder;->bytes_(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/ApkDetail$Builder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/wandoujia/api/proto/ApkDetail$Builder;->version_name(Ljava/lang/String;)Lcom/wandoujia/api/proto/ApkDetail$Builder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getVersionCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/wandoujia/api/proto/ApkDetail$Builder;->version_code(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/ApkDetail$Builder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getMD5()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/wandoujia/api/proto/ApkDetail$Builder;->md5(Ljava/lang/String;)Lcom/wandoujia/api/proto/ApkDetail$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wandoujia/api/proto/ApkDetail$Builder;->build()Lcom/wandoujia/api/proto/ApkDetail;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/wandoujia/api/proto/AppDetail$Builder;

    invoke-direct {v5}, Lcom/wandoujia/api/proto/AppDetail$Builder;-><init>()V

    invoke-virtual {v5, v6}, Lcom/wandoujia/api/proto/AppDetail$Builder;->apk(Ljava/util/List;)Lcom/wandoujia/api/proto/AppDetail$Builder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/wandoujia/api/proto/AppDetail$Builder;->package_name(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppDetail$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wandoujia/api/proto/AppDetail$Builder;->build()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v5

    new-instance v6, Lcom/wandoujia/api/proto/Detail$Builder;

    invoke-direct {v6}, Lcom/wandoujia/api/proto/Detail$Builder;-><init>()V

    invoke-virtual {v6, v5}, Lcom/wandoujia/api/proto/Detail$Builder;->app_detail(Lcom/wandoujia/api/proto/AppDetail;)Lcom/wandoujia/api/proto/Detail$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wandoujia/api/proto/Detail$Builder;->build()Lcom/wandoujia/api/proto/Detail;

    move-result-object v5

    new-instance v6, Lcom/wandoujia/ripple_framework/model/Model;

    new-instance v7, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v7}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    sget-object v8, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v7, v8}, Lcom/wandoujia/api/proto/Entity$Builder;->content_type(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v7

    sget-object v8, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->DETAIL_HEADER:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v7, v8}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/wandoujia/api/proto/Entity$Builder;->title(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/wandoujia/api/proto/Entity$Builder;->sub_title(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4}, Lcom/wandoujia/api/proto/Entity$Builder;->closed_guess(Ljava/lang/Boolean;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/wandoujia/api/proto/Entity$Builder;->detail(Lcom/wandoujia/api/proto/Detail;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    const v0, 0x7f0c0026

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v0, v4}, Lcom/wandoujia/ripple_framework/model/Model;->a(ILjava/lang/Object;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->RIPPLE_DIVIDER:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-static {v0}, Ldrh;->a(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, v2, Lcom/wandoujia/api/proto/AppDetail;->editor_comment:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v2, v3}, Ldrh;->a(Lcom/wandoujia/api/proto/AppDetail;Z)Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v0, v1

    .line 191
    :goto_0
    return-object v0

    .line 115
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 117
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity;->tag_line:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v6

    iget-object v6, v6, Lcom/wandoujia/api/proto/AppDetail;->installed_count_str:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0e0132

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    invoke-static {v0}, Ldwk;->a(Lcom/wandoujia/api/proto/AppDetail;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0e00ec

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0e00ed

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->bytes_:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->bytes_:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v6, v0

    invoke-static {v6, v7}, Lcom/wandoujia/base/utils/TextUtil;->formatSizeInfo(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    invoke-static {v0}, Ldwk;->c(Lcom/wandoujia/api/proto/AppDetail;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gtz v0, :cond_10

    const-string v0, ""

    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0e05c3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v0, " \u00b7 "

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    new-instance v6, Lcom/wandoujia/ripple_framework/model/Model;

    new-instance v1, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v1}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    sget-object v7, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v1, v7}, Lcom/wandoujia/api/proto/Entity$Builder;->content_type(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    sget-object v7, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->DETAIL_HEADER:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v1, v7}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    iget-object v7, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v7, v7, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/wandoujia/api/proto/Entity$Builder;->title(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/wandoujia/api/proto/Entity$Builder;->icon(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    iget-object v7, p0, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v7, v7, Lcom/wandoujia/api/proto/Entity;->attachment:Ljava/util/List;

    invoke-virtual {v1, v7}, Lcom/wandoujia/api/proto/Entity$Builder;->attachment(Ljava/util/List;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/api/proto/AppDetail;->title_en:Ljava/lang/String;

    invoke-static {v1}, Ldwk;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/api/proto/AppDetail;->title_en:Ljava/lang/String;

    :goto_3
    invoke-virtual {v7, v1}, Lcom/wandoujia/api/proto/Entity$Builder;->sub_title(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wandoujia/api/proto/Entity$Builder;->summary(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    new-instance v1, Lcom/wandoujia/api/proto/Detail$Builder;

    invoke-direct {v1}, Lcom/wandoujia/api/proto/Detail$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/wandoujia/api/proto/Detail$Builder;->app_detail(Lcom/wandoujia/api/proto/AppDetail;)Lcom/wandoujia/api/proto/Detail$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/Detail$Builder;->build()Lcom/wandoujia/api/proto/Detail;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/api/proto/Entity$Builder;->detail(Lcom/wandoujia/api/proto/Detail;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->badge:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/wandoujia/api/proto/Entity$Builder;->badge(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager;

    iget-object v1, v5, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->d(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v6

    .line 122
    if-eqz v6, :cond_15

    invoke-virtual {v6}, Lcom/wandoujia/appmanager/LocalAppInfo;->isUpgradable()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v6}, Lcom/wandoujia/appmanager/LocalAppInfo;->isUpgradeIgnored()Z

    move-result v0

    if-nez v0, :cond_15

    .line 123
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager;

    iget-object v1, v5, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->d(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v0

    new-instance v1, Lcom/wandoujia/ripple_framework/model/Model;

    new-instance v7, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v7}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    sget-object v8, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v7, v8}, Lcom/wandoujia/api/proto/Entity$Builder;->content_type(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v7

    sget-object v8, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->DETAIL_UPGRADE_INFO:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v7, v8}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    const v7, 0x7f0c002e

    invoke-virtual {v1, v7, v0}, Lcom/wandoujia/ripple_framework/model/Model;->a(ILjava/lang/Object;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v3

    .line 130
    :goto_4
    if-nez v6, :cond_7

    .line 131
    invoke-static {v5}, Ldrh;->a(Lcom/wandoujia/api/proto/AppDetail;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 132
    invoke-static {p0}, Ldrh;->b(Lcom/wandoujia/ripple_framework/model/Model;)Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_7
    iget-object v1, v5, Lcom/wandoujia/api/proto/AppDetail;->award:Lcom/wandoujia/api/proto/AppAward;

    if-eqz v1, :cond_16

    iget-object v1, v5, Lcom/wandoujia/api/proto/AppDetail;->award:Lcom/wandoujia/api/proto/AppAward;

    iget-object v1, v1, Lcom/wandoujia/api/proto/AppAward;->issue:Ljava/lang/Integer;

    if-eqz v1, :cond_16

    iget-object v1, v5, Lcom/wandoujia/api/proto/AppDetail;->award:Lcom/wandoujia/api/proto/AppAward;

    iget-object v1, v1, Lcom/wandoujia/api/proto/AppAward;->issue:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_16

    iget-object v1, v5, Lcom/wandoujia/api/proto/AppDetail;->award:Lcom/wandoujia/api/proto/AppAward;

    iget-object v1, v1, Lcom/wandoujia/api/proto/AppAward;->cover:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    move v1, v2

    :goto_5
    if-eqz v1, :cond_17

    .line 137
    iget-object v1, v5, Lcom/wandoujia/api/proto/AppDetail;->award:Lcom/wandoujia/api/proto/AppAward;

    new-instance v7, Lcom/wandoujia/api/proto/Image$Builder;

    invoke-direct {v7}, Lcom/wandoujia/api/proto/Image$Builder;-><init>()V

    iget-object v8, v1, Lcom/wandoujia/api/proto/AppAward;->cover:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/wandoujia/api/proto/Image$Builder;->url(Ljava/lang/String;)Lcom/wandoujia/api/proto/Image$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/wandoujia/api/proto/Image$Builder;->build()Lcom/wandoujia/api/proto/Image;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/wandoujia/ripple_framework/model/Model;

    new-instance v9, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v9}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    sget-object v10, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v9, v10}, Lcom/wandoujia/api/proto/Entity$Builder;->content_type(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v9

    sget-object v10, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->DETAIL_AWARD:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v9, v10}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v9

    iget-object v10, v1, Lcom/wandoujia/api/proto/AppAward;->description:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/wandoujia/api/proto/Entity$Builder;->title(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v9

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0e010b

    new-array v12, v2, [Ljava/lang/Object;

    iget-object v13, v1, Lcom/wandoujia/api/proto/AppAward;->issue:Ljava/lang/Integer;

    aput-object v13, v12, v3

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/wandoujia/api/proto/Entity$Builder;->sub_title(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/wandoujia/api/proto/Entity$Builder;->cover(Ljava/util/List;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v8

    new-instance v9, Lcom/wandoujia/api/proto/Action$Builder;

    invoke-direct {v9}, Lcom/wandoujia/api/proto/Action$Builder;-><init>()V

    iget-object v10, v1, Lcom/wandoujia/api/proto/AppAward;->blog_link:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/wandoujia/api/proto/Action$Builder;->url(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;

    move-result-object v9

    iget-object v10, v5, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    iget-object v1, v1, Lcom/wandoujia/api/proto/AppAward;->issue:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v10, v1}, Ldwk;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v10, ""

    invoke-static {v1, v10}, Lcom/wandoujia/p4/campaign/CampaignActivity;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/wandoujia/api/proto/Action$Builder;->intent(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/Action$Builder;->build()Lcom/wandoujia/api/proto/Action;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/wandoujia/api/proto/Entity$Builder;->action(Lcom/wandoujia/api/proto/Action;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v0

    .line 143
    :goto_6
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->g:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 145
    sget-object v0, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->RIPPLE_DIVIDER:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-static {v0}, Ldrh;->a(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_8
    iget-object v0, v5, Lcom/wandoujia/api/proto/AppDetail;->editor_comment:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 150
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->g:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_18

    move v0, v2

    :goto_7
    invoke-static {v5, v0}, Ldrh;->a(Lcom/wandoujia/api/proto/AppDetail;Z)Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_9
    iget-object v0, v5, Lcom/wandoujia/api/proto/AppDetail;->tag:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 154
    new-instance v0, Lcom/wandoujia/ripple_framework/model/Model;

    new-instance v2, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v2}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    sget-object v3, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->content_type(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->DETAIL_TAG:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v2

    iget-object v3, v5, Lcom/wandoujia/api/proto/AppDetail;->tag:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->tag(Ljava/util/List;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_a
    iget-object v0, v5, Lcom/wandoujia/api/proto/AppDetail;->trailer:Lcom/wandoujia/api/proto/TrailerBean;

    if-eqz v0, :cond_b

    iget-object v0, v5, Lcom/wandoujia/api/proto/AppDetail;->trailer:Lcom/wandoujia/api/proto/TrailerBean;

    iget-object v0, v0, Lcom/wandoujia/api/proto/TrailerBean;->trailer_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 158
    new-instance v0, Lcom/wandoujia/api/proto/Image$Builder;

    invoke-direct {v0}, Lcom/wandoujia/api/proto/Image$Builder;-><init>()V

    iget-object v2, v5, Lcom/wandoujia/api/proto/AppDetail;->trailer:Lcom/wandoujia/api/proto/TrailerBean;

    iget-object v2, v2, Lcom/wandoujia/api/proto/TrailerBean;->cover_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/wandoujia/api/proto/Image$Builder;->url(Ljava/lang/String;)Lcom/wandoujia/api/proto/Image$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Image$Builder;->build()Lcom/wandoujia/api/proto/Image;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/wandoujia/ripple_framework/model/Model;

    new-instance v3, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v3}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    sget-object v7, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v3, v7}, Lcom/wandoujia/api/proto/Entity$Builder;->content_type(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v3

    sget-object v7, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->SINGLE_VIDEO:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v3, v7}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->cover(Ljava/util/List;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v2

    new-instance v3, Lcom/wandoujia/api/proto/Action$Builder;

    invoke-direct {v3}, Lcom/wandoujia/api/proto/Action$Builder;-><init>()V

    iget-object v7, v5, Lcom/wandoujia/api/proto/AppDetail;->trailer:Lcom/wandoujia/api/proto/TrailerBean;

    iget-object v7, v7, Lcom/wandoujia/api/proto/TrailerBean;->trailer_url:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/wandoujia/api/proto/Action$Builder;->url(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;

    move-result-object v3

    iget-object v7, v5, Lcom/wandoujia/api/proto/AppDetail;->trailer:Lcom/wandoujia/api/proto/TrailerBean;

    iget-object v7, v7, Lcom/wandoujia/api/proto/TrailerBean;->trailer_url:Ljava/lang/String;

    iget-object v8, v5, Lcom/wandoujia/api/proto/AppDetail;->title:Ljava/lang/String;

    iget-object v9, v5, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/wandoujia/p4/game/acitvity/GameVideoPlayActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/wandoujia/api/proto/Action$Builder;->intent(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/api/proto/Action$Builder;->build()Lcom/wandoujia/api/proto/Action;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->action_positive(Lcom/wandoujia/api/proto/Action;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_b
    iget-object v0, v5, Lcom/wandoujia/api/proto/AppDetail;->review:Lcom/wandoujia/api/proto/ReviewBean;

    if-eqz v0, :cond_19

    iget-object v0, v5, Lcom/wandoujia/api/proto/AppDetail;->review:Lcom/wandoujia/api/proto/ReviewBean;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ReviewBean;->story:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 162
    iget-object v0, v5, Lcom/wandoujia/api/proto/AppDetail;->review:Lcom/wandoujia/api/proto/ReviewBean;

    invoke-static {v0}, Ldrh;->a(Lcom/wandoujia/api/proto/ReviewBean;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 168
    :cond_c
    :goto_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v2, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->RIPPLE_DIVIDER:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-eq v0, v2, :cond_d

    .line 171
    sget-object v0, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->RIPPLE_DIVIDER:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-static {v0}, Ldrh;->a(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_d
    if-eqz v6, :cond_e

    .line 175
    invoke-static {v5}, Ldrh;->a(Lcom/wandoujia/api/proto/AppDetail;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 176
    invoke-static {p0}, Ldrh;->b(Lcom/wandoujia/ripple_framework/model/Model;)Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_e
    new-instance v0, Lcom/wandoujia/ripple_framework/model/Model;

    new-instance v2, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v2}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    sget-object v3, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->content_type(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->DETAIL_APP_INFO:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v2

    new-instance v3, Lcom/wandoujia/api/proto/Detail$Builder;

    invoke-direct {v3}, Lcom/wandoujia/api/proto/Detail$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/wandoujia/api/proto/Detail$Builder;->app_detail(Lcom/wandoujia/api/proto/AppDetail;)Lcom/wandoujia/api/proto/Detail$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/api/proto/Detail$Builder;->build()Lcom/wandoujia/api/proto/Detail;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->detail(Lcom/wandoujia/api/proto/Detail;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v3, v3, Lcom/wandoujia/api/proto/Entity$Builder;->badge:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->badge(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->g:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 184
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 186
    :try_start_0
    iget-object v3, v0, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v3, v3, Lcom/wandoujia/api/proto/Entity;->symbol:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v4, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    .line 188
    :catch_0
    move-exception v0

    goto :goto_9

    .line 117
    :cond_f
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    invoke-static {v0}, Ldwk;->b(Lcom/wandoujia/api/proto/AppDetail;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_10
    invoke-static {v6, v7}, Lcom/wandoujia/base/utils/DateUtil;->distanceToToday(J)I

    move-result v0

    neg-int v0, v0

    const/16 v8, 0x1e

    if-gt v0, v8, :cond_11

    if-gez v0, :cond_12

    :cond_11
    const-string v0, ""

    goto/16 :goto_2

    :cond_12
    const/4 v8, 0x7

    if-gt v0, v8, :cond_13

    invoke-static {v6, v7}, Lcom/wandoujia/base/utils/DateUtil;->distanceToTodayString(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_13
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0e0528

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7, v0}, Lcom/wandoujia/base/utils/DateUtil;->timeStamp2Date(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_14
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/api/proto/AppDetail;->tagline:Ljava/lang/String;

    goto/16 :goto_3

    :cond_15
    move v0, v2

    .line 128
    goto/16 :goto_4

    :cond_16
    move v1, v3

    .line 136
    goto/16 :goto_5

    .line 140
    :cond_17
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto/16 :goto_6

    :cond_18
    move v0, v3

    .line 150
    goto/16 :goto_7

    .line 163
    :cond_19
    iget-object v0, v5, Lcom/wandoujia/api/proto/AppDetail;->screenshots:Lcom/wandoujia/api/proto/ScreenShotSet;

    if-eqz v0, :cond_c

    iget-object v0, v5, Lcom/wandoujia/api/proto/AppDetail;->screenshots:Lcom/wandoujia/api/proto/ScreenShotSet;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ScreenShotSet;->small:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 165
    invoke-static {v5}, Ldrh;->b(Lcom/wandoujia/api/proto/AppDetail;)Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_1a
    move-object v0, v4

    .line 191
    goto/16 :goto_0
.end method

.method private static a(Lcom/wandoujia/api/proto/AppDetail;)Z
    .locals 2
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->user_notice:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->crash_without_gsf:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->crash_without_gsf:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;->CRASH:Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;

    invoke-virtual {v1}, Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 197
    :cond_0
    const/4 v0, 0x1

    .line 199
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/wandoujia/api/proto/AppDetail;)Lcom/wandoujia/ripple_framework/model/Model;
    .locals 7
    .parameter

    .prologue
    .line 389
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 390
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->screenshots:Lcom/wandoujia/api/proto/ScreenShotSet;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ScreenShotSet;->small:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 391
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Ldwk;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v3

    .line 393
    new-instance v4, Lcom/wandoujia/api/proto/Image$Builder;

    invoke-direct {v4}, Lcom/wandoujia/api/proto/Image$Builder;-><init>()V

    invoke-virtual {v4, v0}, Lcom/wandoujia/api/proto/Image$Builder;->url(Ljava/lang/String;)Lcom/wandoujia/api/proto/Image$Builder;

    move-result-object v4

    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wandoujia/api/proto/Image$Builder;->height(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Image$Builder;

    move-result-object v4

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/wandoujia/api/proto/Image$Builder;->width(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Image$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/api/proto/Image$Builder;->build()Lcom/wandoujia/api/proto/Image;

    move-result-object v3

    .line 394
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 395
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    new-instance v3, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v3}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    sget-object v5, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v3, v5}, Lcom/wandoujia/api/proto/Entity$Builder;->content_type(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v3

    sget-object v5, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->SCREENSHOT:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v3, v5}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/wandoujia/api/proto/Entity$Builder;->cover(Ljava/util/List;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v3

    new-instance v4, Lcom/wandoujia/api/proto/Action$Builder;

    invoke-direct {v4}, Lcom/wandoujia/api/proto/Action$Builder;-><init>()V

    iget-object v5, p0, Lcom/wandoujia/api/proto/AppDetail;->screenshots:Lcom/wandoujia/api/proto/ScreenShotSet;

    iget-object v5, v5, Lcom/wandoujia/api/proto/ScreenShotSet;->normal:Ljava/util/List;

    iget-object v6, p0, Lcom/wandoujia/api/proto/AppDetail;->screenshots:Lcom/wandoujia/api/proto/ScreenShotSet;

    iget-object v6, v6, Lcom/wandoujia/api/proto/ScreenShotSet;->small:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v5, v0}, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerActivity;->a(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/wandoujia/api/proto/Action$Builder;->intent(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Action$Builder;->build()Lcom/wandoujia/api/proto/Action;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/wandoujia/api/proto/Entity$Builder;->action_positive(Lcom/wandoujia/api/proto/Action;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 406
    :cond_0
    new-instance v0, Lcom/wandoujia/ripple_framework/model/Model;

    new-instance v2, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v2}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    sget-object v3, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->content_type(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->LIST_LANDSCAPE:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/wandoujia/api/proto/Entity$Builder;->sub_entity(Ljava/util/List;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    return-object v0
.end method

.method private static b(Lcom/wandoujia/ripple_framework/model/Model;)Lcom/wandoujia/ripple_framework/model/Model;
    .locals 4
    .parameter

    .prologue
    .line 471
    new-instance v0, Lcom/wandoujia/ripple_framework/model/Model;

    new-instance v1, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v1}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v1, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->content_type(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->DETAIL_APP_USER_NOTICE:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v1, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    new-instance v2, Lcom/wandoujia/api/proto/Detail$Builder;

    invoke-direct {v2}, Lcom/wandoujia/api/proto/Detail$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Detail$Builder;->app_detail(Lcom/wandoujia/api/proto/AppDetail;)Lcom/wandoujia/api/proto/Detail$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/Detail$Builder;->build()Lcom/wandoujia/api/proto/Detail;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->detail(Lcom/wandoujia/api/proto/Detail;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Entity$Builder;->badge:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->badge(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    return-object v0
.end method

.method private static b()V
    .locals 5

    .prologue
    const v4, 0x3fcf1aa0

    .line 480
    sget v0, Ldrh;->a:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 481
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lj;->b(Landroid/content/Context;)F

    move-result v0

    .line 482
    const/high16 v1, 0x41c0

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lj;->a(FLandroid/content/Context;)I

    move-result v1

    .line 483
    const/high16 v2, 0x4080

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lj;->a(FLandroid/content/Context;)I

    move-result v2

    .line 484
    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 485
    sput v0, Ldrh;->a:F

    int-to-float v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    sput v0, Ldrh;->b:F

    .line 487
    sget v0, Ldrh;->a:F

    div-float/2addr v0, v4

    sput v0, Ldrh;->c:F

    .line 488
    sget v0, Ldrh;->b:F

    mul-float/2addr v0, v4

    sput v0, Ldrh;->d:F

    .line 490
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 61
    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v4, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-ne v1, v4, :cond_1

    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v4, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->DETAIL_HEADER:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-ne v1, v4, :cond_1

    .line 63
    invoke-static {v0}, Ldrh;->a(Lcom/wandoujia/ripple_framework/model/Model;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 64
    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iput-object v0, p0, Ldrh;->e:Lcom/wandoujia/api/proto/AppDetail;

    goto :goto_0

    .line 65
    :cond_1
    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v4, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP_COMMENT:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-ne v1, v4, :cond_3

    .line 66
    iget-object v1, p0, Ldrh;->e:Lcom/wandoujia/api/proto/AppDetail;

    new-instance v4, Lcom/wandoujia/ripple_framework/model/Model;

    new-instance v5, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v5}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    iget-object v6, v0, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v5, v6}, Lcom/wandoujia/api/proto/Entity$Builder;->content_type(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v5

    iget-object v6, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v5, v6}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v5

    new-instance v6, Lcom/wandoujia/api/proto/Detail$Builder;

    invoke-direct {v6}, Lcom/wandoujia/api/proto/Detail$Builder;-><init>()V

    invoke-virtual {v6, v1}, Lcom/wandoujia/api/proto/Detail$Builder;->app_detail(Lcom/wandoujia/api/proto/AppDetail;)Lcom/wandoujia/api/proto/Detail$Builder;

    move-result-object v1

    iget-object v6, v0, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v6, v6, Lcom/wandoujia/api/proto/Entity;->detail:Lcom/wandoujia/api/proto/Detail;

    if-eqz v6, :cond_2

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Detail;->app_comment:Lcom/wandoujia/api/proto/CommentSummary;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/wandoujia/api/proto/Detail$Builder;->app_comment(Lcom/wandoujia/api/proto/CommentSummary;)Lcom/wandoujia/api/proto/Detail$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Detail$Builder;->build()Lcom/wandoujia/api/proto/Detail;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/wandoujia/api/proto/Entity$Builder;->detail(Lcom/wandoujia/api/proto/Detail;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 67
    :cond_3
    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v4, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->SINGLE_GRAND:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-ne v1, v4, :cond_5

    .line 68
    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "com.wandoujia.game_launcher"

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v4

    iget-object v4, v4, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v1

    const-string v4, "com.wandoujia.game_launcher"

    invoke-virtual {v1, v4}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_0

    .line 69
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 68
    :cond_4
    const/4 v1, 0x1

    goto :goto_2

    .line 72
    :cond_5
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 75
    :cond_6
    return-object v2
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method
