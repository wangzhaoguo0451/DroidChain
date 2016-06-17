.class public final Lcom/wandoujia/api/proto/AppDetail$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "AppDetail.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/AppDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public ad:Ljava/lang/Boolean;

.field public ad_type:Ljava/lang/Integer;

.field public alias:Ljava/lang/String;

.field public apk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/ApkDetail;",
            ">;"
        }
    .end annotation
.end field

.field public app_platform:Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

.field public app_type:Ljava/lang/String;

.field public award:Lcom/wandoujia/api/proto/AppAward;

.field public banner:Ljava/lang/String;

.field public categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/AppCategory;",
            ">;"
        }
    .end annotation
.end field

.field public comments_count:Ljava/lang/Integer;

.field public cover_image:Lcom/wandoujia/api/proto/Image;

.field public crash_without_gsf:Ljava/lang/Integer;

.field public deprecated_tag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/AppTag;",
            ">;"
        }
    .end annotation
.end field

.field public description:Ljava/lang/String;

.field public detail_param:Ljava/lang/String;

.field public developer:Lcom/wandoujia/api/proto/Developer;

.field public dislikes_count:Ljava/lang/Integer;

.field public editor_comment:Ljava/lang/String;

.field public extension_pack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/ExtensionPack;",
            ">;"
        }
    .end annotation
.end field

.field public icons:Lcom/wandoujia/api/proto/IconSet;

.field public id:Ljava/lang/Integer;

.field public impr_url:Ljava/lang/String;

.field public in_app_purchase:Ljava/lang/Integer;

.field public installed_count_str:Ljava/lang/String;

.field public is_online_game:Ljava/lang/Boolean;

.field public language:Ljava/lang/String;

.field public likes_count:Ljava/lang/Integer;

.field public likes_rate:Ljava/lang/Integer;

.field public need_network:Ljava/lang/Boolean;

.field public package_name:Ljava/lang/String;

.field public review:Lcom/wandoujia/api/proto/ReviewBean;

.field public screenshots:Lcom/wandoujia/api/proto/ScreenShotSet;

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

.field public tagline:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public title_en:Ljava/lang/String;

.field public trailer:Lcom/wandoujia/api/proto/TrailerBean;

.field public updated_date:Ljava/lang/Long;

.field public user_notice:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 389
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/AppDetail;)V
    .locals 1
    .parameter

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 393
    if-nez p1, :cond_0

    .line 433
    :goto_0
    return-void

    .line 394
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->ad:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->ad:Ljava/lang/Boolean;

    .line 395
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->ad_type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->ad_type:Ljava/lang/Integer;

    .line 396
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->detail_param:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->detail_param:Ljava/lang/String;

    .line 397
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/AppDetail;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/AppDetail;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->apk:Ljava/util/List;

    .line 398
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->award:Lcom/wandoujia/api/proto/AppAward;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->award:Lcom/wandoujia/api/proto/AppAward;

    .line 399
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->description:Ljava/lang/String;

    .line 400
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->title:Ljava/lang/String;

    .line 401
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->comments_count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->comments_count:Ljava/lang/Integer;

    .line 402
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->likes_count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->likes_count:Ljava/lang/Integer;

    .line 403
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->dislikes_count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->dislikes_count:Ljava/lang/Integer;

    .line 404
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->editor_comment:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->editor_comment:Ljava/lang/String;

    .line 405
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->tagline:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->tagline:Ljava/lang/String;

    .line 406
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->installed_count_str:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->installed_count_str:Ljava/lang/String;

    .line 407
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->package_name:Ljava/lang/String;

    .line 408
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->id:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->id:Ljava/lang/Integer;

    .line 409
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->likes_rate:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->likes_rate:Ljava/lang/Integer;

    .line 410
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->banner:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->banner:Ljava/lang/String;

    .line 411
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->updated_date:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->updated_date:Ljava/lang/Long;

    .line 412
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->impr_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->impr_url:Ljava/lang/String;

    .line 413
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->app_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->app_type:Ljava/lang/String;

    .line 414
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->developer:Lcom/wandoujia/api/proto/Developer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->developer:Lcom/wandoujia/api/proto/Developer;

    .line 415
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->icons:Lcom/wandoujia/api/proto/IconSet;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->icons:Lcom/wandoujia/api/proto/IconSet;

    .line 416
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->extension_pack:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/AppDetail;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/AppDetail;->access$100(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->extension_pack:Ljava/util/List;

    .line 417
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->screenshots:Lcom/wandoujia/api/proto/ScreenShotSet;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->screenshots:Lcom/wandoujia/api/proto/ScreenShotSet;

    .line 418
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->deprecated_tag:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/AppDetail;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/AppDetail;->access$200(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->deprecated_tag:Ljava/util/List;

    .line 419
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->is_online_game:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->is_online_game:Ljava/lang/Boolean;

    .line 420
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->need_network:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->need_network:Ljava/lang/Boolean;

    .line 421
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->crash_without_gsf:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->crash_without_gsf:Ljava/lang/Integer;

    .line 422
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->in_app_purchase:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->in_app_purchase:Ljava/lang/Integer;

    .line 423
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->language:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->language:Ljava/lang/String;

    .line 424
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->user_notice:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->user_notice:Ljava/lang/String;

    .line 425
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->cover_image:Lcom/wandoujia/api/proto/Image;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->cover_image:Lcom/wandoujia/api/proto/Image;

    .line 426
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->trailer:Lcom/wandoujia/api/proto/TrailerBean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->trailer:Lcom/wandoujia/api/proto/TrailerBean;

    .line 427
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->review:Lcom/wandoujia/api/proto/ReviewBean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->review:Lcom/wandoujia/api/proto/ReviewBean;

    .line 428
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->tag:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/AppDetail;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/AppDetail;->access$300(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->tag:Ljava/util/List;

    .line 429
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->categories:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/AppDetail;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/AppDetail;->access$400(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->categories:Ljava/util/List;

    .line 430
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->title_en:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->title_en:Ljava/lang/String;

    .line 431
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->alias:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->alias:Ljava/lang/String;

    .line 432
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->app_platform:Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->app_platform:Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

    goto/16 :goto_0
.end method


# virtual methods
.method public final ad(Ljava/lang/Boolean;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->ad:Ljava/lang/Boolean;

    .line 437
    return-object p0
.end method

.method public final ad_type(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->ad_type:Ljava/lang/Integer;

    .line 442
    return-object p0
.end method

.method public final alias(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 657
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->alias:Ljava/lang/String;

    .line 658
    return-object p0
.end method

.method public final apk(Ljava/util/List;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/ApkDetail;",
            ">;)",
            "Lcom/wandoujia/api/proto/AppDetail$Builder;"
        }
    .end annotation

    .prologue
    .line 451
    invoke-static {p1}, Lcom/wandoujia/api/proto/AppDetail$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->apk:Ljava/util/List;

    .line 452
    return-object p0
.end method

.method public final app_platform(Lcom/wandoujia/api/proto/AppDetail$AppPlatform;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 665
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->app_platform:Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

    .line 666
    return-object p0
.end method

.method public final app_type(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->app_type:Ljava/lang/String;

    .line 532
    return-object p0
.end method

.method public final award(Lcom/wandoujia/api/proto/AppAward;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->award:Lcom/wandoujia/api/proto/AppAward;

    .line 457
    return-object p0
.end method

.method public final banner(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 516
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->banner:Ljava/lang/String;

    .line 517
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/AppDetail$Builder;->build()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/AppDetail;
    .locals 2

    .prologue
    .line 671
    new-instance v0, Lcom/wandoujia/api/proto/AppDetail;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/AppDetail;-><init>(Lcom/wandoujia/api/proto/AppDetail$Builder;Ld;)V

    return-object v0
.end method

.method public final categories(Ljava/util/List;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/AppCategory;",
            ">;)",
            "Lcom/wandoujia/api/proto/AppDetail$Builder;"
        }
    .end annotation

    .prologue
    .line 641
    invoke-static {p1}, Lcom/wandoujia/api/proto/AppDetail$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->categories:Ljava/util/List;

    .line 642
    return-object p0
.end method

.method public final comments_count(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->comments_count:Ljava/lang/Integer;

    .line 472
    return-object p0
.end method

.method public final cover_image(Lcom/wandoujia/api/proto/Image;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 612
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->cover_image:Lcom/wandoujia/api/proto/Image;

    .line 613
    return-object p0
.end method

.method public final crash_without_gsf(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 580
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->crash_without_gsf:Ljava/lang/Integer;

    .line 581
    return-object p0
.end method

.method public final deprecated_tag(Ljava/util/List;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/AppTag;",
            ">;)",
            "Lcom/wandoujia/api/proto/AppDetail$Builder;"
        }
    .end annotation

    .prologue
    .line 556
    invoke-static {p1}, Lcom/wandoujia/api/proto/AppDetail$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->deprecated_tag:Ljava/util/List;

    .line 557
    return-object p0
.end method

.method public final description(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->description:Ljava/lang/String;

    .line 462
    return-object p0
.end method

.method public final detail_param(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->detail_param:Ljava/lang/String;

    .line 447
    return-object p0
.end method

.method public final developer(Lcom/wandoujia/api/proto/Developer;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->developer:Lcom/wandoujia/api/proto/Developer;

    .line 537
    return-object p0
.end method

.method public final dislikes_count(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->dislikes_count:Ljava/lang/Integer;

    .line 482
    return-object p0
.end method

.method public final editor_comment(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 486
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->editor_comment:Ljava/lang/String;

    .line 487
    return-object p0
.end method

.method public final extension_pack(Ljava/util/List;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/ExtensionPack;",
            ">;)",
            "Lcom/wandoujia/api/proto/AppDetail$Builder;"
        }
    .end annotation

    .prologue
    .line 546
    invoke-static {p1}, Lcom/wandoujia/api/proto/AppDetail$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->extension_pack:Ljava/util/List;

    .line 547
    return-object p0
.end method

.method public final icons(Lcom/wandoujia/api/proto/IconSet;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 541
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->icons:Lcom/wandoujia/api/proto/IconSet;

    .line 542
    return-object p0
.end method

.method public final id(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->id:Ljava/lang/Integer;

    .line 507
    return-object p0
.end method

.method public final impr_url(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 526
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->impr_url:Ljava/lang/String;

    .line 527
    return-object p0
.end method

.method public final in_app_purchase(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 588
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->in_app_purchase:Ljava/lang/Integer;

    .line 589
    return-object p0
.end method

.method public final installed_count_str(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->installed_count_str:Ljava/lang/String;

    .line 497
    return-object p0
.end method

.method public final is_online_game(Ljava/lang/Boolean;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 564
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->is_online_game:Ljava/lang/Boolean;

    .line 565
    return-object p0
.end method

.method public final language(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->language:Ljava/lang/String;

    .line 597
    return-object p0
.end method

.method public final likes_count(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->likes_count:Ljava/lang/Integer;

    .line 477
    return-object p0
.end method

.method public final likes_rate(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->likes_rate:Ljava/lang/Integer;

    .line 512
    return-object p0
.end method

.method public final need_network(Ljava/lang/Boolean;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 572
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->need_network:Ljava/lang/Boolean;

    .line 573
    return-object p0
.end method

.method public final package_name(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->package_name:Ljava/lang/String;

    .line 502
    return-object p0
.end method

.method public final review(Lcom/wandoujia/api/proto/ReviewBean;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 628
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->review:Lcom/wandoujia/api/proto/ReviewBean;

    .line 629
    return-object p0
.end method

.method public final screenshots(Lcom/wandoujia/api/proto/ScreenShotSet;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->screenshots:Lcom/wandoujia/api/proto/ScreenShotSet;

    .line 552
    return-object p0
.end method

.method public final tag(Ljava/util/List;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Tag;",
            ">;)",
            "Lcom/wandoujia/api/proto/AppDetail$Builder;"
        }
    .end annotation

    .prologue
    .line 636
    invoke-static {p1}, Lcom/wandoujia/api/proto/AppDetail$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->tag:Ljava/util/List;

    .line 637
    return-object p0
.end method

.method public final tagline(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 491
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->tagline:Ljava/lang/String;

    .line 492
    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 466
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->title:Ljava/lang/String;

    .line 467
    return-object p0
.end method

.method public final title_en(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 649
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->title_en:Ljava/lang/String;

    .line 650
    return-object p0
.end method

.method public final trailer(Lcom/wandoujia/api/proto/TrailerBean;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 620
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->trailer:Lcom/wandoujia/api/proto/TrailerBean;

    .line 621
    return-object p0
.end method

.method public final updated_date(Ljava/lang/Long;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 521
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->updated_date:Ljava/lang/Long;

    .line 522
    return-object p0
.end method

.method public final user_notice(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppDetail$Builder;->user_notice:Ljava/lang/String;

    .line 605
    return-object p0
.end method
