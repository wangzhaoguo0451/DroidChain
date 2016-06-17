.class public final Lcom/wandoujia/api/proto/Entity$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Entity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/Entity;",
        ">;"
    }
.end annotation


# instance fields
.field public action:Lcom/wandoujia/api/proto/Action;

.field public action_positive:Lcom/wandoujia/api/proto/Action;

.field public allow_save_image:Ljava/lang/Boolean;

.field public allow_share_image:Ljava/lang/Boolean;

.field public attach_entity:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Entity;",
            ">;"
        }
    .end annotation
.end field

.field public attachment:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Entity;",
            ">;"
        }
    .end annotation
.end field

.field public badge:Ljava/lang/Integer;

.field public channel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Entity;",
            ">;"
        }
    .end annotation
.end field

.field public closed_guess:Ljava/lang/Boolean;

.field public content_type:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public cover:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Image;",
            ">;"
        }
    .end annotation
.end field

.field public cover_total_count:Ljava/lang/Integer;

.field public datePublished:Ljava/lang/Long;

.field public description:Ljava/lang/String;

.field public detail:Lcom/wandoujia/api/proto/Detail;

.field public detail_url:Ljava/lang/String;

.field public favorite_summary:Lcom/wandoujia/api/proto/FavoriteSummary;

.field public follow_count:Ljava/lang/Long;

.field public icon:Ljava/lang/String;

.field public icon_image:Lcom/wandoujia/api/proto/Image;

.field public id:Ljava/lang/Long;

.field public id_string:Ljava/lang/String;

.field public image:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Image;",
            ">;"
        }
    .end annotation
.end field

.field public image_total_count:Ljava/lang/Integer;

.field public music:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Music;",
            ">;"
        }
    .end annotation
.end field

.field public music_total_count:Ljava/lang/Integer;

.field public need_filter:Ljava/lang/Boolean;

.field public provider:Lcom/wandoujia/api/proto/Entity;

.field public recommend_reason:Ljava/lang/String;

.field public section_auto_grid_rows:Ljava/lang/Integer;

.field public share_summary:Lcom/wandoujia/api/proto/ShareSummary;

.field public snippet:Ljava/lang/String;

.field public strategy_name:Ljava/lang/String;

.field public sub_entity:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Entity;",
            ">;"
        }
    .end annotation
.end field

.field public sub_title:Ljava/lang/String;

.field public subscribed:Ljava/lang/Boolean;

.field public summary:Ljava/lang/String;

.field public support_ripple:Ljava/lang/Boolean;

.field public symbol:Ljava/lang/String;

.field public tag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Tag;",
            ">;"
        }
    .end annotation
.end field

.field public tag_line:Ljava/lang/String;

.field public template:Ljava/lang/Integer;

.field public template_name:Ljava/lang/String;

.field public template_type:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/Integer;

.field public vertical:Ljava/lang/String;

.field public video:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Video;",
            ">;"
        }
    .end annotation
.end field

.field public video_total_count:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 569
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 570
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/Entity;)V
    .locals 1
    .parameter

    .prologue
    .line 573
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 574
    if-nez p1, :cond_0

    .line 624
    :goto_0
    return-void

    .line 575
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->id:Ljava/lang/Long;

    .line 576
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->type:Ljava/lang/Integer;

    .line 577
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->template:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->template:Ljava/lang/Integer;

    .line 578
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->icon:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->icon:Ljava/lang/String;

    .line 579
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->icon_image:Lcom/wandoujia/api/proto/Image;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->icon_image:Lcom/wandoujia/api/proto/Image;

    .line 580
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->provider:Lcom/wandoujia/api/proto/Entity;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->provider:Lcom/wandoujia/api/proto/Entity;

    .line 581
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->image:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/Entity;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/Entity;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->image:Ljava/util/List;

    .line 582
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->cover:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/Entity;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/Entity;->access$100(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->cover:Ljava/util/List;

    .line 583
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    .line 584
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->sub_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->sub_title:Ljava/lang/String;

    .line 585
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->summary:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->summary:Ljava/lang/String;

    .line 586
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->snippet:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->snippet:Ljava/lang/String;

    .line 587
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->tag_line:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->tag_line:Ljava/lang/String;

    .line 588
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->detail:Lcom/wandoujia/api/proto/Detail;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->detail:Lcom/wandoujia/api/proto/Detail;

    .line 589
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->action:Lcom/wandoujia/api/proto/Action;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    .line 590
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->datePublished:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->datePublished:Ljava/lang/Long;

    .line 591
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->detail_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->detail_url:Ljava/lang/String;

    .line 592
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->sub_entity:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/Entity;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/Entity;->access$200(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->sub_entity:Ljava/util/List;

    .line 593
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->template_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->template_name:Ljava/lang/String;

    .line 594
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->support_ripple:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->support_ripple:Ljava/lang/Boolean;

    .line 595
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->vertical:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->vertical:Ljava/lang/String;

    .line 596
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->badge:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->badge:Ljava/lang/Integer;

    .line 597
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->description:Ljava/lang/String;

    .line 598
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->action_positive:Lcom/wandoujia/api/proto/Action;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->action_positive:Lcom/wandoujia/api/proto/Action;

    .line 599
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->attach_entity:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/Entity;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/Entity;->access$300(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->attach_entity:Ljava/util/List;

    .line 600
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->tag:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/Entity;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/Entity;->access$400(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->tag:Ljava/util/List;

    .line 601
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->symbol:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->symbol:Ljava/lang/String;

    .line 602
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->content_type:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->content_type:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 603
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->template_type:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->template_type:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    .line 604
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->id_string:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->id_string:Ljava/lang/String;

    .line 605
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->strategy_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->strategy_name:Ljava/lang/String;

    .line 606
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->video:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/Entity;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/Entity;->access$500(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->video:Ljava/util/List;

    .line 607
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->music:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/Entity;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/Entity;->access$600(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->music:Ljava/util/List;

    .line 608
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->image_total_count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->image_total_count:Ljava/lang/Integer;

    .line 609
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->cover_total_count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->cover_total_count:Ljava/lang/Integer;

    .line 610
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->video_total_count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->video_total_count:Ljava/lang/Integer;

    .line 611
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->music_total_count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->music_total_count:Ljava/lang/Integer;

    .line 612
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->channel:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/Entity;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/Entity;->access$700(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->channel:Ljava/util/List;

    .line 613
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->subscribed:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->subscribed:Ljava/lang/Boolean;

    .line 614
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->attachment:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/Entity;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/Entity;->access$800(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->attachment:Ljava/util/List;

    .line 615
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->favorite_summary:Lcom/wandoujia/api/proto/FavoriteSummary;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->favorite_summary:Lcom/wandoujia/api/proto/FavoriteSummary;

    .line 616
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->share_summary:Lcom/wandoujia/api/proto/ShareSummary;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->share_summary:Lcom/wandoujia/api/proto/ShareSummary;

    .line 617
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->recommend_reason:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->recommend_reason:Ljava/lang/String;

    .line 618
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->follow_count:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->follow_count:Ljava/lang/Long;

    .line 619
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->closed_guess:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->closed_guess:Ljava/lang/Boolean;

    .line 620
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->allow_save_image:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->allow_save_image:Ljava/lang/Boolean;

    .line 621
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->allow_share_image:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->allow_share_image:Ljava/lang/Boolean;

    .line 622
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->need_filter:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->need_filter:Ljava/lang/Boolean;

    .line 623
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->section_auto_grid_rows:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->section_auto_grid_rows:Ljava/lang/Integer;

    goto/16 :goto_0
.end method


# virtual methods
.method public final action(Lcom/wandoujia/api/proto/Action;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 742
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    .line 743
    return-object p0
.end method

.method public final action_positive(Lcom/wandoujia/api/proto/Action;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 814
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->action_positive:Lcom/wandoujia/api/proto/Action;

    .line 815
    return-object p0
.end method

.method public final allow_save_image(Ljava/lang/Boolean;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 985
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->allow_save_image:Ljava/lang/Boolean;

    .line 986
    return-object p0
.end method

.method public final allow_share_image(Ljava/lang/Boolean;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 990
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->allow_share_image:Ljava/lang/Boolean;

    .line 991
    return-object p0
.end method

.method public final attach_entity(Ljava/util/List;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Entity;",
            ">;)",
            "Lcom/wandoujia/api/proto/Entity$Builder;"
        }
    .end annotation

    .prologue
    .line 822
    invoke-static {p1}, Lcom/wandoujia/api/proto/Entity$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->attach_entity:Ljava/util/List;

    .line 823
    return-object p0
.end method

.method public final attachment(Ljava/util/List;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Entity;",
            ">;)",
            "Lcom/wandoujia/api/proto/Entity$Builder;"
        }
    .end annotation

    .prologue
    .line 943
    invoke-static {p1}, Lcom/wandoujia/api/proto/Entity$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->attachment:Ljava/util/List;

    .line 944
    return-object p0
.end method

.method public final badge(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 798
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->badge:Ljava/lang/Integer;

    .line 799
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/Entity;
    .locals 2

    .prologue
    .line 1012
    new-instance v0, Lcom/wandoujia/api/proto/Entity;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/Entity;-><init>(Lcom/wandoujia/api/proto/Entity$Builder;Ld;)V

    return-object v0
.end method

.method public final channel(Ljava/util/List;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Entity;",
            ">;)",
            "Lcom/wandoujia/api/proto/Entity$Builder;"
        }
    .end annotation

    .prologue
    .line 927
    invoke-static {p1}, Lcom/wandoujia/api/proto/Entity$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->channel:Ljava/util/List;

    .line 928
    return-object p0
.end method

.method public final closed_guess(Ljava/lang/Boolean;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 977
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->closed_guess:Ljava/lang/Boolean;

    .line 978
    return-object p0
.end method

.method public final content_type(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 846
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->content_type:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 847
    return-object p0
.end method

.method public final cover(Ljava/util/List;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Image;",
            ">;)",
            "Lcom/wandoujia/api/proto/Entity$Builder;"
        }
    .end annotation

    .prologue
    .line 686
    invoke-static {p1}, Lcom/wandoujia/api/proto/Entity$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->cover:Ljava/util/List;

    .line 687
    return-object p0
.end method

.method public final cover_total_count(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 903
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->cover_total_count:Ljava/lang/Integer;

    .line 904
    return-object p0
.end method

.method public final datePublished(Ljava/lang/Long;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 750
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->datePublished:Ljava/lang/Long;

    .line 751
    return-object p0
.end method

.method public final description(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 806
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->description:Ljava/lang/String;

    .line 807
    return-object p0
.end method

.method public final detail(Lcom/wandoujia/api/proto/Detail;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 734
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->detail:Lcom/wandoujia/api/proto/Detail;

    .line 735
    return-object p0
.end method

.method public final detail_url(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 758
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->detail_url:Ljava/lang/String;

    .line 759
    return-object p0
.end method

.method public final favorite_summary(Lcom/wandoujia/api/proto/FavoriteSummary;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 951
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->favorite_summary:Lcom/wandoujia/api/proto/FavoriteSummary;

    .line 952
    return-object p0
.end method

.method public final follow_count(Ljava/lang/Long;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 969
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->follow_count:Ljava/lang/Long;

    .line 970
    return-object p0
.end method

.method public final icon(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 654
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->icon:Ljava/lang/String;

    .line 655
    return-object p0
.end method

.method public final icon_image(Lcom/wandoujia/api/proto/Image;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 662
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->icon_image:Lcom/wandoujia/api/proto/Image;

    .line 663
    return-object p0
.end method

.method public final id(Ljava/lang/Long;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 630
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->id:Ljava/lang/Long;

    .line 631
    return-object p0
.end method

.method public final id_string(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 862
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->id_string:Ljava/lang/String;

    .line 863
    return-object p0
.end method

.method public final image(Ljava/util/List;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Image;",
            ">;)",
            "Lcom/wandoujia/api/proto/Entity$Builder;"
        }
    .end annotation

    .prologue
    .line 678
    invoke-static {p1}, Lcom/wandoujia/api/proto/Entity$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->image:Ljava/util/List;

    .line 679
    return-object p0
.end method

.method public final image_total_count(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 895
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->image_total_count:Ljava/lang/Integer;

    .line 896
    return-object p0
.end method

.method public final music(Ljava/util/List;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Music;",
            ">;)",
            "Lcom/wandoujia/api/proto/Entity$Builder;"
        }
    .end annotation

    .prologue
    .line 887
    invoke-static {p1}, Lcom/wandoujia/api/proto/Entity$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->music:Ljava/util/List;

    .line 888
    return-object p0
.end method

.method public final music_total_count(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 919
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->music_total_count:Ljava/lang/Integer;

    .line 920
    return-object p0
.end method

.method public final need_filter(Ljava/lang/Boolean;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 998
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->need_filter:Ljava/lang/Boolean;

    .line 999
    return-object p0
.end method

.method public final provider(Lcom/wandoujia/api/proto/Entity;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 670
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->provider:Lcom/wandoujia/api/proto/Entity;

    .line 671
    return-object p0
.end method

.method public final recommend_reason(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 964
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->recommend_reason:Ljava/lang/String;

    .line 965
    return-object p0
.end method

.method public final section_auto_grid_rows(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 1006
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->section_auto_grid_rows:Ljava/lang/Integer;

    .line 1007
    return-object p0
.end method

.method public final share_summary(Lcom/wandoujia/api/proto/ShareSummary;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 959
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->share_summary:Lcom/wandoujia/api/proto/ShareSummary;

    .line 960
    return-object p0
.end method

.method public final snippet(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 718
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->snippet:Ljava/lang/String;

    .line 719
    return-object p0
.end method

.method public final strategy_name(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 870
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->strategy_name:Ljava/lang/String;

    .line 871
    return-object p0
.end method

.method public final sub_entity(Ljava/util/List;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Entity;",
            ">;)",
            "Lcom/wandoujia/api/proto/Entity$Builder;"
        }
    .end annotation

    .prologue
    .line 766
    invoke-static {p1}, Lcom/wandoujia/api/proto/Entity$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->sub_entity:Ljava/util/List;

    .line 767
    return-object p0
.end method

.method public final sub_title(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 702
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->sub_title:Ljava/lang/String;

    .line 703
    return-object p0
.end method

.method public final subscribed(Ljava/lang/Boolean;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 935
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->subscribed:Ljava/lang/Boolean;

    .line 936
    return-object p0
.end method

.method public final summary(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 710
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->summary:Ljava/lang/String;

    .line 711
    return-object p0
.end method

.method public final support_ripple(Ljava/lang/Boolean;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 782
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->support_ripple:Ljava/lang/Boolean;

    .line 783
    return-object p0
.end method

.method public final symbol(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 838
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->symbol:Ljava/lang/String;

    .line 839
    return-object p0
.end method

.method public final tag(Ljava/util/List;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Tag;",
            ">;)",
            "Lcom/wandoujia/api/proto/Entity$Builder;"
        }
    .end annotation

    .prologue
    .line 830
    invoke-static {p1}, Lcom/wandoujia/api/proto/Entity$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->tag:Ljava/util/List;

    .line 831
    return-object p0
.end method

.method public final tag_line(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 726
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->tag_line:Ljava/lang/String;

    .line 727
    return-object p0
.end method

.method public final template(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 646
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->template:Ljava/lang/Integer;

    .line 647
    return-object p0
.end method

.method public final template_name(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 774
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->template_name:Ljava/lang/String;

    .line 775
    return-object p0
.end method

.method public final template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 854
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->template_type:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    .line 855
    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 694
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    .line 695
    return-object p0
.end method

.method public final type(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 638
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->type:Ljava/lang/Integer;

    .line 639
    return-object p0
.end method

.method public final vertical(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 790
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->vertical:Ljava/lang/String;

    .line 791
    return-object p0
.end method

.method public final video(Ljava/util/List;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Video;",
            ">;)",
            "Lcom/wandoujia/api/proto/Entity$Builder;"
        }
    .end annotation

    .prologue
    .line 879
    invoke-static {p1}, Lcom/wandoujia/api/proto/Entity$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity$Builder;->video:Ljava/util/List;

    .line 880
    return-object p0
.end method

.method public final video_total_count(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Entity$Builder;
    .locals 0
    .parameter

    .prologue
    .line 911
    iput-object p1, p0, Lcom/wandoujia/api/proto/Entity$Builder;->video_total_count:Ljava/lang/Integer;

    .line 912
    return-object p0
.end method
