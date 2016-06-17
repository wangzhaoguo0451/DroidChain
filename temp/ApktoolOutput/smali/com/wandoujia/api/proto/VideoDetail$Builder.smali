.class public final Lcom/wandoujia/api/proto/VideoDetail$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "VideoDetail.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/VideoDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public actor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public common_download_source:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public cover:Lcom/wandoujia/api/proto/Image;

.field public created_date:Ljava/lang/Long;

.field public default_episode:Ljava/lang/String;

.field public download_count:Ljava/lang/Long;

.field public duration:Ljava/lang/Double;

.field public episode_date:Ljava/lang/Long;

.field public episode_num:Ljava/lang/Integer;

.field public height:Ljava/lang/Integer;

.field public large_cover_url:Ljava/lang/String;

.field public latest_episode_date:Ljava/lang/Long;

.field public latest_episode_num:Ljava/lang/Integer;

.field public name:Ljava/lang/String;

.field public no_download_urls:Ljava/lang/Boolean;

.field public no_play_infos:Ljava/lang/Boolean;

.field public no_private_download_urls:Ljava/lang/Boolean;

.field public play_source_set:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public private_download_source:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public provider_name:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public recommend:Ljava/lang/String;

.field public section_recommend:Ljava/lang/String;

.field public small_cover_url:Ljava/lang/String;

.field public sub_type:Ljava/lang/String;

.field public subscribe_url:Ljava/lang/String;

.field public total_episodes_num:Ljava/lang/Integer;

.field public total_size:Ljava/lang/Long;

.field public updated_date:Ljava/lang/Long;

.field public video_id:Ljava/lang/Long;

.field public video_title:Ljava/lang/String;

.field public video_type:Ljava/lang/String;

.field public width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 305
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/VideoDetail;)V
    .locals 1
    .parameter

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 309
    if-nez p1, :cond_0

    .line 342
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail;->no_play_infos:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->no_play_infos:Ljava/lang/Boolean;

    .line 311
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail;->no_download_urls:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->no_download_urls:Ljava/lang/Boolean;

    .line 312
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail;->no_private_download_urls:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->no_private_download_urls:Ljava/lang/Boolean;

    .line 313
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail;->total_episodes_num:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->total_episodes_num:Ljava/lang/Integer;

    .line 314
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail;->latest_episode_num:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->latest_episode_num:Ljava/lang/Integer;

    .line 315
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail;->video_id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->video_id:Ljava/lang/Long;

    .line 316
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail;->total_size:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->total_size:Ljava/lang/Long;

    .line 317
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail;->created_date:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->created_date:Ljava/lang/Long;

    .line 318
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail;->updated_date:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->updated_date:Ljava/lang/Long;

    .line 319
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail;->download_count:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->download_count:Ljava/lang/Long;

    .line 320
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail;->latest_episode_date:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->latest_episode_date:Ljava/lang/Long;

    .line 321
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail;->recommend:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->recommend:Ljava/lang/String;

    .line 322
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail;->video_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->video_title:Ljava/lang/String;

    .line 323
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail;->subscribe_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->subscribe_url:Ljava/lang/String;

    .line 324
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail;->large_cover_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->large_cover_url:Ljava/lang/String;

    .line 325
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail;->small_cover_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->small_cover_url:Ljava/lang/String;

    .line 326
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail;->section_recommend:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->section_recommend:Ljava/lang/String;

    .line 327
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail;->provider_name:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/VideoDetail;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/VideoDetail;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->provider_name:Ljava/util/List;

    .line 328
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail;->video_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->video_type:Ljava/lang/String;

    .line 329
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail;->sub_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->sub_type:Ljava/lang/String;

    .line 330
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail;->default_episode:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->default_episode:Ljava/lang/String;

    .line 331
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail;->episode_date:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->episode_date:Ljava/lang/Long;

    .line 332
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail;->episode_num:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->episode_num:Ljava/lang/Integer;

    .line 333
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail;->private_download_source:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/VideoDetail;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/VideoDetail;->access$100(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->private_download_source:Ljava/util/List;

    .line 334
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail;->common_download_source:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/VideoDetail;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/VideoDetail;->access$200(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->common_download_source:Ljava/util/List;

    .line 335
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail;->play_source_set:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/VideoDetail;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/VideoDetail;->access$300(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->play_source_set:Ljava/util/List;

    .line 336
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->name:Ljava/lang/String;

    .line 337
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail;->cover:Lcom/wandoujia/api/proto/Image;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->cover:Lcom/wandoujia/api/proto/Image;

    .line 338
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail;->actor:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/VideoDetail;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/VideoDetail;->access$400(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->actor:Ljava/util/List;

    .line 339
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail;->duration:Ljava/lang/Double;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->duration:Ljava/lang/Double;

    .line 340
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail;->width:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->width:Ljava/lang/Integer;

    .line 341
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail;->height:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->height:Ljava/lang/Integer;

    goto/16 :goto_0
.end method


# virtual methods
.method public final actor(Ljava/util/List;)Lcom/wandoujia/api/proto/VideoDetail$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/wandoujia/api/proto/VideoDetail$Builder;"
        }
    .end annotation

    .prologue
    .line 488
    invoke-static {p1}, Lcom/wandoujia/api/proto/VideoDetail$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->actor:Ljava/util/List;

    .line 489
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/VideoDetail$Builder;->build()Lcom/wandoujia/api/proto/VideoDetail;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/VideoDetail;
    .locals 2

    .prologue
    .line 512
    new-instance v0, Lcom/wandoujia/api/proto/VideoDetail;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/VideoDetail;-><init>(Lcom/wandoujia/api/proto/VideoDetail$Builder;Ld;)V

    return-object v0
.end method

.method public final common_download_source(Ljava/util/List;)Lcom/wandoujia/api/proto/VideoDetail$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/wandoujia/api/proto/VideoDetail$Builder;"
        }
    .end annotation

    .prologue
    .line 468
    invoke-static {p1}, Lcom/wandoujia/api/proto/VideoDetail$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->common_download_source:Ljava/util/List;

    .line 469
    return-object p0
.end method

.method public final cover(Lcom/wandoujia/api/proto/Image;)Lcom/wandoujia/api/proto/VideoDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->cover:Lcom/wandoujia/api/proto/Image;

    .line 484
    return-object p0
.end method

.method public final created_date(Ljava/lang/Long;)Lcom/wandoujia/api/proto/VideoDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->created_date:Ljava/lang/Long;

    .line 381
    return-object p0
.end method

.method public final default_episode(Ljava/lang/String;)Lcom/wandoujia/api/proto/VideoDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 445
    iput-object p1, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->default_episode:Ljava/lang/String;

    .line 446
    return-object p0
.end method

.method public final download_count(Ljava/lang/Long;)Lcom/wandoujia/api/proto/VideoDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->download_count:Ljava/lang/Long;

    .line 391
    return-object p0
.end method

.method public final duration(Ljava/lang/Double;)Lcom/wandoujia/api/proto/VideoDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->duration:Ljava/lang/Double;

    .line 497
    return-object p0
.end method

.method public final episode_date(Ljava/lang/Long;)Lcom/wandoujia/api/proto/VideoDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 453
    iput-object p1, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->episode_date:Ljava/lang/Long;

    .line 454
    return-object p0
.end method

.method public final episode_num(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/VideoDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 458
    iput-object p1, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->episode_num:Ljava/lang/Integer;

    .line 459
    return-object p0
.end method

.method public final height(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/VideoDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->height:Ljava/lang/Integer;

    .line 507
    return-object p0
.end method

.method public final large_cover_url(Ljava/lang/String;)Lcom/wandoujia/api/proto/VideoDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->large_cover_url:Ljava/lang/String;

    .line 416
    return-object p0
.end method

.method public final latest_episode_date(Ljava/lang/Long;)Lcom/wandoujia/api/proto/VideoDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->latest_episode_date:Ljava/lang/Long;

    .line 396
    return-object p0
.end method

.method public final latest_episode_num(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/VideoDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->latest_episode_num:Ljava/lang/Integer;

    .line 366
    return-object p0
.end method

.method public final name(Ljava/lang/String;)Lcom/wandoujia/api/proto/VideoDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->name:Ljava/lang/String;

    .line 479
    return-object p0
.end method

.method public final no_download_urls(Ljava/lang/Boolean;)Lcom/wandoujia/api/proto/VideoDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->no_download_urls:Ljava/lang/Boolean;

    .line 351
    return-object p0
.end method

.method public final no_play_infos(Ljava/lang/Boolean;)Lcom/wandoujia/api/proto/VideoDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->no_play_infos:Ljava/lang/Boolean;

    .line 346
    return-object p0
.end method

.method public final no_private_download_urls(Ljava/lang/Boolean;)Lcom/wandoujia/api/proto/VideoDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->no_private_download_urls:Ljava/lang/Boolean;

    .line 356
    return-object p0
.end method

.method public final play_source_set(Ljava/util/List;)Lcom/wandoujia/api/proto/VideoDetail$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/wandoujia/api/proto/VideoDetail$Builder;"
        }
    .end annotation

    .prologue
    .line 473
    invoke-static {p1}, Lcom/wandoujia/api/proto/VideoDetail$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->play_source_set:Ljava/util/List;

    .line 474
    return-object p0
.end method

.method public final private_download_source(Ljava/util/List;)Lcom/wandoujia/api/proto/VideoDetail$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/wandoujia/api/proto/VideoDetail$Builder;"
        }
    .end annotation

    .prologue
    .line 463
    invoke-static {p1}, Lcom/wandoujia/api/proto/VideoDetail$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->private_download_source:Ljava/util/List;

    .line 464
    return-object p0
.end method

.method public final provider_name(Ljava/util/List;)Lcom/wandoujia/api/proto/VideoDetail$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/wandoujia/api/proto/VideoDetail$Builder;"
        }
    .end annotation

    .prologue
    .line 430
    invoke-static {p1}, Lcom/wandoujia/api/proto/VideoDetail$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->provider_name:Ljava/util/List;

    .line 431
    return-object p0
.end method

.method public final recommend(Ljava/lang/String;)Lcom/wandoujia/api/proto/VideoDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->recommend:Ljava/lang/String;

    .line 401
    return-object p0
.end method

.method public final section_recommend(Ljava/lang/String;)Lcom/wandoujia/api/proto/VideoDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->section_recommend:Ljava/lang/String;

    .line 426
    return-object p0
.end method

.method public final small_cover_url(Ljava/lang/String;)Lcom/wandoujia/api/proto/VideoDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->small_cover_url:Ljava/lang/String;

    .line 421
    return-object p0
.end method

.method public final sub_type(Ljava/lang/String;)Lcom/wandoujia/api/proto/VideoDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->sub_type:Ljava/lang/String;

    .line 441
    return-object p0
.end method

.method public final subscribe_url(Ljava/lang/String;)Lcom/wandoujia/api/proto/VideoDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->subscribe_url:Ljava/lang/String;

    .line 411
    return-object p0
.end method

.method public final total_episodes_num(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/VideoDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->total_episodes_num:Ljava/lang/Integer;

    .line 361
    return-object p0
.end method

.method public final total_size(Ljava/lang/Long;)Lcom/wandoujia/api/proto/VideoDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->total_size:Ljava/lang/Long;

    .line 376
    return-object p0
.end method

.method public final updated_date(Ljava/lang/Long;)Lcom/wandoujia/api/proto/VideoDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->updated_date:Ljava/lang/Long;

    .line 386
    return-object p0
.end method

.method public final video_id(Ljava/lang/Long;)Lcom/wandoujia/api/proto/VideoDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->video_id:Ljava/lang/Long;

    .line 371
    return-object p0
.end method

.method public final video_title(Ljava/lang/String;)Lcom/wandoujia/api/proto/VideoDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->video_title:Ljava/lang/String;

    .line 406
    return-object p0
.end method

.method public final video_type(Ljava/lang/String;)Lcom/wandoujia/api/proto/VideoDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->video_type:Ljava/lang/String;

    .line 436
    return-object p0
.end method

.method public final width(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/VideoDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/wandoujia/api/proto/VideoDetail$Builder;->width:Ljava/lang/Integer;

    .line 502
    return-object p0
.end method
