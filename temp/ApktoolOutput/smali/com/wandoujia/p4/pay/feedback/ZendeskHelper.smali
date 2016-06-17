.class public Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;
.super Ljava/lang/Object;
.source "ZendeskHelper.java"


# static fields
.field public static final CATEGORY_CHILDREN:Ljava/lang/String; = "second"

.field public static final CATEGORY_CHILDREN_FIELD_ID:I = 0x169f859

.field public static final CATEGORY_CUSTOM:Ljava/lang/String; = "first"

.field public static final CATEGORY_CUSTOM_FIELD_ID:I = 0x169f845

.field public static final MODEL_CUSTOM_FIELD_ID:I = 0x15493d3

.field public static final PAYMENT_CATEGORY_CHILDREN_FIELD_ID:I = 0x14623a9

.field public static final PAYMENT_CATEGORY_CUSTOM_FIELD_ID:I = 0x1457863

.field public static final SDK_CUSTOM_FIELD_ID:I = 0x154c433

.field public static final UDID_CUSTOM_FIELD_ID:I = 0x1547d02

.field public static final VERSION_CODE_CUSTOM_FIELD_ID:I = 0x15493dd

.field private static instance:Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;

.field private static mainThreadHandler:Landroid/os/Handler;


# instance fields
.field private final sizeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$OnFeedbackCommentSizeChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private unreadedTicketSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 374
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;->mainThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;->unreadedTicketSize:I

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;->sizeListeners:Ljava/util/List;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;->genSignituredUrl(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;->mainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private genSignature(J)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "we\'re#1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 363
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 365
    :cond_0
    return-object v0
.end method

.method private genSignituredUrl(Ljava/lang/String;J)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 369
    invoke-direct {p0, p2, p3}, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;->genSignature(J)Ljava/lang/String;

    move-result-object v0

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?signiture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;
    .locals 2

    .prologue
    .line 107
    const-class v1, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;->instance:Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;

    invoke-direct {v0}, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;-><init>()V

    sput-object v0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;->instance:Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;

    .line 110
    :cond_0
    sget-object v0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;->instance:Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private submitTicket(Lcom/wandoujia/p4/pay/model/ZendeskModels$TicktetRequest;)V
    .locals 2
    .parameter

    .prologue
    .line 440
    sget-object v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->ZENDESK_CREATE_TICKET:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->getURL()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;->submitTicket(Lcom/wandoujia/p4/pay/model/ZendeskModels$TicktetRequest;Ljava/lang/String;Z)V

    .line 441
    return-void
.end method


# virtual methods
.method public addFeedbackCommentSizeChangeListener(Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$OnFeedbackCommentSizeChangeListener;)V
    .locals 3
    .parameter

    .prologue
    .line 450
    if-nez p1, :cond_0

    .line 461
    :goto_0
    return-void

    .line 453
    :cond_0
    iget-object v1, p0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;->sizeListeners:Ljava/util/List;

    monitor-enter v1

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;->sizeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 455
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$OnFeedbackCommentSizeChangeListener;

    .line 456
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    monitor-exit v1

    goto :goto_0

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 460
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;->sizeListeners:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public decreaseUnreadedTickedSize()V
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;->unreadedTicketSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;->unreadedTicketSize:I

    .line 119
    return-void
.end method

.method public getCategoies(Landroid/content/Context;I)Ljava/util/List;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCategoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-static {}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getCurrentConfig()Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v1

    .line 146
    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getFeedbackChildrenCategoryList()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getFeedbackCategoryList()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->setFeedbackCategoryList(Ljava/lang/String;)V

    .line 150
    :cond_0
    new-instance v2, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$1;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$1;-><init>(Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;Landroid/content/Context;ILcom/wandoujia/p4/pay/storage/LocalStorage;)V

    invoke-static {v2}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 179
    const v2, 0x169f845

    if-eq p2, v2, :cond_1

    const v2, 0x1457863

    if-ne p2, v2, :cond_3

    .line 181
    :cond_1
    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getFeedbackCategoryList()Ljava/lang/String;

    move-result-object v0

    .line 183
    const-class v1, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketField;

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/ExternUtil;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketField;

    .line 185
    if-eqz v0, :cond_2

    .line 186
    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketField;->getCustom_field_options()Ljava/util/List;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    .line 188
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 211
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 213
    const/4 v2, 0x0

    :goto_2
    array-length v4, v1

    if-ge v2, v4, :cond_6

    .line 214
    new-instance v4, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCategoryItem;

    invoke-direct {v4}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCategoryItem;-><init>()V

    .line 215
    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCategoryItem;->setName(Ljava/lang/String;)V

    .line 216
    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCategoryItem;->setValue(Ljava/lang/String;)V

    .line 217
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 192
    :cond_3
    const v2, 0x169f859

    if-eq p2, v2, :cond_4

    const v2, 0x14623a9

    if-ne p2, v2, :cond_7

    .line 194
    :cond_4
    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getFeedbackChildrenCategoryList()Ljava/lang/String;

    move-result-object v0

    .line 196
    const-class v1, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketChildrenField;

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/ExternUtil;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketChildrenField;

    .line 198
    if-eqz v0, :cond_5

    .line 199
    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketChildrenField;->getCustom_field_options()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 201
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080021

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    move-object v0, v3

    .line 219
    goto :goto_0

    :cond_7
    move-object v1, v0

    goto :goto_1
.end method

.method public getUnreadedTicketSize()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;->unreadedTicketSize:I

    return v0
.end method

.method public sendTicket(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {p1, p2, p3, p4, p5}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicktetRequestBuidler;->build(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/wandoujia/p4/pay/model/ZendeskModels$TicktetRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;->submitTicket(Lcom/wandoujia/p4/pay/model/ZendeskModels$TicktetRequest;)V

    .line 134
    return-void
.end method

.method public submitTicket(Lcom/wandoujia/p4/pay/model/ZendeskModels$TicktetRequest;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 378
    new-instance v0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$2;-><init>(Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;Ljava/lang/String;Lcom/wandoujia/p4/pay/model/ZendeskModels$TicktetRequest;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 437
    return-void
.end method
