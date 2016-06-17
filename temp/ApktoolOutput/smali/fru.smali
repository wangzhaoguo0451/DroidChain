.class public final Lfru;
.super Ljava/lang/Object;
.source "ZendeskHelper.java"


# static fields
.field private static c:Lfru;


# instance fields
.field public a:I

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lfse;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lfru;->a:I

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfru;->b:Ljava/util/List;

    .line 123
    return-void
.end method

.method public static declared-synchronized a()Lfru;
    .locals 2

    .prologue
    .line 129
    const-class v1, Lfru;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lfru;->c:Lfru;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lfru;

    invoke-direct {v0}, Lfru;-><init>()V

    sput-object v0, Lfru;->c:Lfru;

    .line 132
    :cond_0
    sget-object v0, Lfru;->c:Lfru;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static a(J)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "we\'re#1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 427
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 429
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 248
    new-instance v2, Lfws;

    invoke-direct {v2}, Lfws;-><init>()V

    .line 250
    invoke-virtual {v2}, Lfws;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lfxu;

    iput-object p1, v0, Lfxu;->a:Ljava/lang/String;

    .line 252
    :try_start_0
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketFieldResponse;

    .line 253
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketFieldResponse;->getTicket_field()Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketField;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketField;->getCustom_field_options()Ljava/util/List;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 279
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 264
    :cond_0
    const-string v0, "first"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 272
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 273
    const/4 v2, 0x0

    :goto_2
    array-length v4, v1

    if-ge v2, v4, :cond_2

    .line 274
    new-instance v4, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;

    invoke-direct {v4}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;-><init>()V

    .line 275
    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;->setName(Ljava/lang/String;)V

    .line 276
    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCategoryItem;->setValue(Ljava/lang/String;)V

    .line 277
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 267
    :cond_1
    const-string v0, "second"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080013

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v3

    .line 279
    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final b()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lfru;->a:I

    .line 288
    const/4 v4, 0x0

    .line 289
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 290
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->g()Ljava/util/List;

    move-result-object v11

    .line 291
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    new-array v12, v2, [Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;

    .line 292
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_0

    .line 293
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 295
    new-instance v5, Lfwk;

    invoke-direct {v5}, Lfwk;-><init>()V

    .line 296
    invoke-virtual {v5}, Lfwk;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v2

    check-cast v2, Lfxr;

    iput-wide v6, v2, Lfxr;->a:J

    invoke-static {v8, v9}, Lfru;->a(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lfxv;->b:Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v2, Lfxv;->c:Ljava/lang/Long;

    .line 300
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lfvu;->executeAsync(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;Lcom/wandoujia/rpc/http/callback/Callback;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 302
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 305
    :cond_0
    const/4 v2, 0x0

    move v5, v4

    move v4, v2

    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_9

    .line 307
    :try_start_0
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;

    .line 308
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;->getAudits()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    move v3, v5

    .line 352
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v5, v3

    goto :goto_1

    .line 311
    :cond_2
    invoke-virtual {v2}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;->getAudits()Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Audits;

    invoke-virtual {v3}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Audits;->getTicket_id()J

    move-result-wide v14

    .line 313
    invoke-virtual {v2}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;->getAudits()Ljava/util/List;

    move-result-object v13

    .line 314
    const/4 v8, 0x0

    :goto_3
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    if-ge v8, v3, :cond_5

    .line 315
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Audits;

    invoke-virtual {v3}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Audits;->getEvents()Ljava/util/List;

    move-result-object v16

    .line 316
    const/4 v7, 0x1

    .line 317
    const/4 v6, 0x1

    .line 318
    const/4 v3, 0x0

    move v9, v3

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    if-ge v9, v3, :cond_d

    .line 319
    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Event;

    invoke-virtual {v3}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Event;->isPublic_()Z

    move-result v3

    if-nez v3, :cond_4

    .line 320
    invoke-interface {v13, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 321
    add-int/lit8 v7, v8, -0x1

    .line 322
    const/4 v3, 0x0

    move/from16 v17, v3

    move v3, v7

    move/from16 v7, v17

    .line 330
    :goto_5
    if-eqz v6, :cond_3

    if-eqz v7, :cond_3

    .line 331
    invoke-interface {v13, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 332
    add-int/lit8 v3, v3, -0x1

    .line 314
    :cond_3
    add-int/lit8 v8, v3, 0x1

    goto :goto_3

    .line 325
    :cond_4
    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Event;

    invoke-virtual {v3}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Event;->getBody()Ljava/lang/String;

    move-result-object v3

    .line 326
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 327
    const/4 v3, 0x0

    .line 318
    :goto_6
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    move v6, v3

    goto :goto_4

    .line 335
    :cond_5
    invoke-virtual {v2, v13}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;->setAudits(Ljava/util/List;)V

    .line 337
    const/4 v3, 0x0

    move v6, v3

    :goto_7
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    if-ge v6, v3, :cond_6

    .line 338
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v3, v14, v8

    if-nez v3, :cond_8

    .line 339
    aput-object v2, v12, v6

    .line 343
    :cond_6
    invoke-static {v14, v15}, Lcom/wandoujia/p4/configs/Config;->b(J)I

    move-result v3

    .line 344
    invoke-virtual {v2}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;->getAudits()Ljava/util/List;

    move-result-object v2

    .line 345
    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 346
    if-ge v3, v2, :cond_7

    .line 347
    add-int/lit8 v5, v5, 0x1

    :cond_7
    move v3, v5

    .line 353
    goto/16 :goto_2

    .line 337
    :cond_8
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_7

    .line 350
    :catch_0
    move-exception v2

    move v3, v5

    goto/16 :goto_2

    :catch_1
    move-exception v2

    move v3, v5

    goto/16 :goto_2

    .line 356
    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 357
    array-length v2, v12

    add-int/lit8 v2, v2, -0x1

    :goto_8
    if-ltz v2, :cond_b

    .line 358
    aget-object v4, v12, v2

    if-eqz v4, :cond_a

    .line 359
    aget-object v4, v12, v2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_a
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 362
    :cond_b
    move-object/from16 v0, p0

    iput v5, v0, Lfru;->a:I

    .line 363
    return-object v3

    :cond_c
    move v3, v6

    goto :goto_6

    :cond_d
    move v3, v8

    goto :goto_5
.end method
