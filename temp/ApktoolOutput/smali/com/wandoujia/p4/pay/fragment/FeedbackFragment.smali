.class public Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;
.super Landroid/support/v4/app/Fragment;
.source "FeedbackFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BACK_STACK_TAG:Ljava/lang/String; = "SHOW_FEEDBACK"

.field private static final CHANGE_LINE:Ljava/lang/String; = "\n"

.field private static final FEEDBACK_KEY_COMMENTS:Ljava/lang/String; = "feedback_comments"

.field private static final FEEDBACK_KEY_EMAIL:Ljava/lang/String; = "feedback_email"

.field private static final FEEDBACK_MAP_KEY:Ljava/lang/String; = "feedback_map"

.field private static final MARGIN:I = 0x5

.field private static final TAG:Ljava/lang/String; = null

.field private static final ZENDESK_DEFAULT_EMAIL:Ljava/lang/String; = "noreply@wandoujia.com"

.field private static final ZENDESK_ID_GAME:Ljava/lang/String; = "21636784"

.field private static final ZENDESK_ID_MAIN_CATEGORY:I = 0x1457863

.field private static final ZENDESK_ID_MOBILE:Ljava/lang/String; = "21199120"

.field private static final ZENDESK_ID_PAYMETHOD:Ljava/lang/String; = "21636804"

.field private static final ZENDESK_ID_SUB_CATEGORY:I = 0x14623a9

.field private static final ZENDESK_ID_WDJ_ACCOUNT:Ljava/lang/String; = "21636774"


# instance fields
.field private category:Ljava/lang/String;

.field private categoryChildrenItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private categoryItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field currentFeedbackBasicInfo:Ljava/lang/String;

.field currentFeedbackGame:Ljava/lang/String;

.field currentFeedbackOrderChannel:Ljava/lang/String;

.field currentFeedbackOrderId:Ljava/lang/String;

.field currentFeeddbackContent:Ljava/lang/String;

.field currentMainCategoryValue:Ljava/lang/String;

.field private currentRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/pay/model/RecordItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private details:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private feedbackTitle:Landroid/widget/TextView;

.field private fetcher:Lcom/wandoujia/p4/pay/loader/Fetcher;

.field private isOthers:Z

.field private lastTryFetch:I

.field private localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

.field mFetchCallback:Lcom/wandoujia/p4/pay/loader/Fetcher$FetchCallback;

.field mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private otherFeedbackDescription:Landroid/widget/EditText;

.field private paymentRecordsAdapter:Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter;

.field private phoneInput:Landroid/widget/EditText;

.field private qqInput:Landroid/widget/EditText;

.field private questionedOrderSelector:Lcom/wandoujia/p4/pay/widget/ListViewSpinner;

.field private roleInput:Landroid/widget/EditText;

.field private rootView:Landroid/view/View;

.field private spinner:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;

.field private zoneInput:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->currentFeeddbackContent:Ljava/lang/String;

    .line 279
    new-instance v0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$2;

    invoke-direct {v0, p0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$2;-><init>(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 292
    new-instance v0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$3;

    invoke-direct {v0, p0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$3;-><init>(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->mFetchCallback:Lcom/wandoujia/p4/pay/loader/Fetcher$FetchCallback;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 58
    iget v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->lastTryFetch:I

    return v0
.end method

.method static synthetic access$002(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput p1, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->lastTryFetch:I

    return p1
.end method

.method static synthetic access$100(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)Lcom/wandoujia/p4/pay/loader/Fetcher;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->fetcher:Lcom/wandoujia/p4/pay/loader/Fetcher;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->spinner:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->isOthers:Z

    return p1
.end method

.method static synthetic access$200(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->paymentRecordsAdapter:Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)Lcom/wandoujia/p4/pay/widget/ListViewSpinner;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->questionedOrderSelector:Lcom/wandoujia/p4/pay/widget/ListViewSpinner;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->currentRecordList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->currentRecordList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->categoryItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->details:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->categoryChildrenItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->category:Ljava/lang/String;

    return-object p1
.end method

.method private buildAndSendTicktetRequest(Ljava/util/Map;)Lcom/wandoujia/p4/pay/model/ZendeskModels$TicktetRequest;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/wandoujia/p4/pay/model/ZendeskModels$TicktetRequest;"
        }
    .end annotation

    .prologue
    .line 405
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    :cond_0
    const/4 v0, 0x0

    .line 460
    :goto_0
    return-object v0

    .line 409
    :cond_1
    new-instance v3, Lcom/wandoujia/p4/pay/model/ZendeskModels$Ticket;

    invoke-direct {v3}, Lcom/wandoujia/p4/pay/model/ZendeskModels$Ticket;-><init>()V

    .line 410
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 412
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 417
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 418
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 419
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 420
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 421
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 422
    const-string v6, "feedback_comments"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 426
    new-instance v2, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketComment;

    invoke-direct {v2}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketComment;-><init>()V

    .line 427
    invoke-virtual {v2, v0}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketComment;->setBody(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v3, v2}, Lcom/wandoujia/p4/pay/model/ZendeskModels$Ticket;->setComment(Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketComment;)V

    .line 443
    :goto_2
    sget-object v2, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "--->"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/wandoujia/p4/pay/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 429
    :cond_3
    const-string v6, "feedback_email"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 430
    new-instance v2, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketRequester;

    invoke-direct {v2}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketRequester;-><init>()V

    .line 431
    invoke-virtual {v2, v0}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketRequester;->setName(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v2, v0}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketRequester;->setEmail(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v3, v2}, Lcom/wandoujia/p4/pay/model/ZendeskModels$Ticket;->setRequester(Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketRequester;)V

    goto :goto_2

    .line 436
    :cond_4
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 440
    new-instance v6, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCustomFieldOptionItem;

    invoke-direct {v6, v2, v0}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCustomFieldOptionItem;-><init>(ILjava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 446
    :cond_5
    new-instance v0, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCustomFieldOptionItem;

    const v1, 0x1457863

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->currentMainCategoryValue:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCustomFieldOptionItem;-><init>(ILjava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    new-instance v0, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCustomFieldOptionItem;

    const v1, 0x14623a9

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->category:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCustomFieldOptionItem;-><init>(ILjava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    invoke-virtual {v3, v4}, Lcom/wandoujia/p4/pay/model/ZendeskModels$Ticket;->setCustom_fields(Ljava/util/List;)V

    .line 451
    const v0, 0x7f0e0680

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/wandoujia/p4/pay/model/ZendeskModels$Ticket;->setSubject(Ljava/lang/String;)V

    .line 452
    new-instance v0, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicktetRequest;

    invoke-direct {v0}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicktetRequest;-><init>()V

    .line 454
    invoke-virtual {v0, v3}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicktetRequest;->setTicket(Lcom/wandoujia/p4/pay/model/ZendeskModels$Ticket;)V

    .line 456
    invoke-static {}, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;->getInstance()Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/entities/app/RequestInfo;->PAYMENT_ZENDESK_CREATE_TICKET:Lcom/wandoujia/entities/app/RequestInfo;

    invoke-virtual {v2}, Lcom/wandoujia/entities/app/RequestInfo;->getURL()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;->submitTicket(Lcom/wandoujia/p4/pay/model/ZendeskModels$TicktetRequest;Ljava/lang/String;Z)V

    .line 459
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto/16 :goto_0

    .line 438
    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method private getAdditionalAccountInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "\n\u8c4c\u8c46\u835a\u8d26\u53f7: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 473
    const-string v0, "noreply@wandoujia.com"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    invoke-direct {p0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->getCurrentUserName()Ljava/lang/String;

    move-result-object v0

    .line 475
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "\u672a\u77e5"

    .line 477
    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private getCurrentUserName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 500
    const/4 v0, 0x0

    .line 501
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getUser()Lcom/wandoujia/p4/pay/model/User;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 502
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getUser()Lcom/wandoujia/p4/pay/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/User;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 504
    :cond_0
    return-object v0
.end method

.method private getEmailAsUserName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 509
    invoke-direct {p0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->getCurrentUserName()Ljava/lang/String;

    move-result-object v0

    .line 510
    invoke-static {}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$EmailValidator;->getInstance()Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$EmailValidator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$EmailValidator;->validate(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 511
    const-string v0, "noreply@wandoujia.com"

    .line 513
    :cond_0
    return-object v0
.end method

.method private getGameName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 481
    const/4 v1, 0x0

    .line 482
    iget-boolean v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->isOthers:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->currentFeedbackGame:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 483
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 484
    :try_start_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 488
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 491
    const-string v0, "\u901a\u8fc7\u8c4c\u8c46\u835a\u624b\u673a\u5ba2\u6237\u7aef"

    .line 496
    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 494
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->currentFeedbackGame:Ljava/lang/String;

    goto :goto_1
.end method

.method private initServiceContactInfoViews()V
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 320
    const-string v1, "\u7535\u8bdd\uff1a<font color=\"blue\"><u>400-0980-888</u></font>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK\u7248\u672c "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    return-void
.end method

.method private loadCategoies()V
    .locals 8

    .prologue
    .line 201
    invoke-static {}, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;->getInstance()Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x1457863

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;->getCategoies(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->categoryItems:Ljava/util/List;

    .line 204
    invoke-static {}, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;->getInstance()Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x14623a9

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;->getCategoies(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->categoryChildrenItems:Ljava/util/List;

    .line 207
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->details:Ljava/util/List;

    .line 209
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->categoryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCategoryItem;

    .line 210
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 211
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->categoryChildrenItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCategoryItem;

    .line 212
    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCategoryItem;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCategoryItem;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 213
    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCategoryItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->details:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCategoryItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->spinner:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->details:Ljava/util/List;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->setData(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method private preLoadOrders()V
    .locals 4

    .prologue
    .line 158
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->questionedOrderSelector:Lcom/wandoujia/p4/pay/widget/ListViewSpinner;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 159
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03024c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 164
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    new-instance v1, Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter;

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->paymentRecordsAdapter:Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter;

    .line 167
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->questionedOrderSelector:Lcom/wandoujia/p4/pay/widget/ListViewSpinner;

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->paymentRecordsAdapter:Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter;

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 168
    new-instance v1, Lcom/wandoujia/p4/pay/loader/Fetcher;

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->mFetchCallback:Lcom/wandoujia/p4/pay/loader/Fetcher$FetchCallback;

    invoke-direct {v1, v2}, Lcom/wandoujia/p4/pay/loader/Fetcher;-><init>(Lcom/wandoujia/p4/pay/loader/Fetcher$FetchCallback;)V

    iput-object v1, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->fetcher:Lcom/wandoujia/p4/pay/loader/Fetcher;

    .line 170
    new-instance v1, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$1;

    invoke-direct {v1, p0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$1;-><init>(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 187
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->fetcher:Lcom/wandoujia/p4/pay/loader/Fetcher;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/loader/Fetcher;->fetch()V

    .line 190
    return-void
.end method

.method public static showFeedback(Landroid/support/v4/app/FragmentActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    const v1, 0x7f0c0221

    new-instance v2, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    invoke-direct {v2}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    const-string v1, "SHOW_FEEDBACK"

    invoke-virtual {v0, v1}, Lag;->a(Ljava/lang/String;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 119
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 464
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    :goto_0
    return-void

    .line 468
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Ldxa;->b:I

    int-to-long v2, v1

    invoke-static {v0, p1, v2, v3}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    goto :goto_0
.end method


# virtual methods
.method getOrderFeedbackContent(Lcom/wandoujia/p4/pay/model/RecordItemInfo;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 255
    iget-object v0, p1, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->price:Ljava/lang/String;

    .line 256
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    const-string v0, "0"

    .line 264
    :goto_0
    iget-object v1, p1, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->wandouOrder:Ljava/lang/String;

    iput-object v1, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->currentFeedbackOrderId:Ljava/lang/String;

    .line 265
    iget-object v1, p1, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->gameName:Ljava/lang/String;

    iput-object v1, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->currentFeedbackGame:Ljava/lang/String;

    .line 266
    iget-object v1, p1, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->channel:Ljava/lang/String;

    iput-object v1, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->currentFeedbackOrderChannel:Ljava/lang/String;

    .line 268
    const v1, 0x7f0e0686

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->gameName:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->itemName:Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v0, 0x3

    iget-object v3, p1, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->status:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget-object v3, p1, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->channel:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x5

    iget-object v3, p1, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->dateString:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->currentFeedbackBasicInfo:Ljava/lang/String;

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->currentFeedbackBasicInfo:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0e0687

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->wandouOrder:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0e0679

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->orderInGame:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 259
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 260
    long-to-double v0, v0

    const-wide/high16 v2, 0x4059

    div-double/2addr v0, v2

    .line 261
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method loadRecords(Landroid/content/Context;III)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 223
    .line 224
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAppId()Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-static {}, Lchv;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 228
    :try_start_0
    const-string v1, "appkey"

    iget-object v4, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v4}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    const-string v1, "uid"

    iget-object v4, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v4}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getUser()Lcom/wandoujia/p4/pay/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/p4/pay/model/User;->getUid()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    const-string v1, "wdj_auth"

    iget-object v4, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v4}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAuth()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    const-string v1, "tradestatus"

    const-string v4, "SERVERFINISH"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    const-string v1, "max"

    invoke-virtual {v3, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 233
    const-string v1, "startnum"

    invoke-virtual {v3, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 234
    sget-object v1, Lcom/wandoujia/p4/pay/PayImpl;->ORDER_QUERY_ALL_URL:Ljava/lang/String;

    .line 235
    if-nez p2, :cond_0

    .line 236
    sget-object v1, Lcom/wandoujia/p4/pay/PayImpl;->RECHARGE_RECORDS_QUERY_ALL_URL:Ljava/lang/String;

    .line 239
    :cond_0
    invoke-static {p1, v2}, Lcom/wandoujia/p4/pay/PayImpl;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/wandoujia/p4/pay/PayImpl;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v3}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getSecretKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/wandoujia/p4/pay/PayImpl;->post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 247
    :cond_1
    :goto_0
    sget-object v2, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->TAG:Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v1, v0

    :goto_1
    invoke-static {v2, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-object v0

    .line 247
    :cond_2
    const-string v1, "No records found."

    goto :goto_1

    .line 246
    :catch_0
    move-exception v1

    goto :goto_0

    .line 243
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x3

    .line 335
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 336
    const v1, 0x7f0c04dc

    if-ne v1, v0, :cond_1

    .line 337
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 338
    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const-string v1, "tel:4000980888"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 340
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    const v1, 0x7f0c04de

    if-ne v1, v0, :cond_a

    .line 343
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 345
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->isOthers:Z

    if-eqz v0, :cond_3

    const-string v0, ""

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->otherFeedbackDescription:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->phoneInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 361
    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->qqInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 363
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v4, :cond_4

    .line 364
    :cond_2
    const-string v0, "\u8bf7\u586b\u5199\u5b8c\u6574\u7684\u95ee\u9898\u4fe1\u606f"

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :cond_3
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->currentFeeddbackContent:Ljava/lang/String;

    goto :goto_1

    .line 368
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xb

    if-eq v1, v3, :cond_6

    .line 369
    :cond_5
    const-string v0, "\u8bf7\u586b\u5199\u6b63\u786e\u7684\u624b\u673a\u53f7"

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_8

    .line 373
    :cond_7
    const-string v0, "\u8bf7\u586b\u5199\u6b63\u786e\u7684QQ\u53f7"

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 377
    :cond_8
    invoke-direct {p0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->getGameName()Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-direct {p0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->getEmailAsUserName()Ljava/lang/String;

    move-result-object v3

    .line 379
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u60a8\u597d,\n\u60a8\u8fd0\u8425\u7684\u6e38\u620f\u300c"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u300d\u6536\u5230\u73a9\u5bb6\u6295\u8bc9\uff0c\u6295\u8bc9\u4fe1\u606f\u5982\u4e0b:\n\u53cd\u9988\u5185\u5bb9:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v3}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->getAdditionalAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\n\u7528\u6237 QQ: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\u6e38\u620f\u89d2\u8272: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->roleInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\u6240\u5728\u5206\u533a: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->zoneInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\u4e3a\u4fdd\u969c\u7528\u6237\u6743\u76ca\uff0c\u8bf7\u7acb\u5373\u5904\u7406\uff0c\u8c4c\u8c46\u835a\u771f\u8bda\u5730\u611f\u8c22\u60a8\u7684\u652f\u6301\u3002"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 387
    const-string v5, "21636804"

    iget-boolean v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->isOthers:Z

    if-eqz v0, :cond_9

    const-string v0, "unknown"

    :goto_2
    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    const-string v0, "21199120"

    iget-object v5, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->phoneInput:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const-string v0, "21636774"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string v0, "21636784"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string v0, "feedback_email"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string v0, "feedback_comments"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    invoke-direct {p0, v2}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->buildAndSendTicktetRequest(Ljava/util/Map;)Lcom/wandoujia/p4/pay/model/ZendeskModels$TicktetRequest;

    goto/16 :goto_0

    .line 387
    :cond_9
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->currentFeedbackOrderChannel:Ljava/lang/String;

    goto :goto_2

    .line 395
    :cond_a
    const v1, 0x7f0c04bf

    if-ne v1, v0, :cond_0

    .line 396
    const-string v0, "0"

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->currentFeedbackOrderId:Ljava/lang/String;

    .line 397
    const v0, 0x7f0e02ee

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->currentFeedbackBasicInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->currentFeeddbackContent:Ljava/lang/String;

    .line 399
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->questionedOrderSelector:Lcom/wandoujia/p4/pay/widget/ListViewSpinner;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->currentFeedbackBasicInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->questionedOrderSelector:Lcom/wandoujia/p4/pay/widget/ListViewSpinner;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner;->disMiss()V

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-static {}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getCurrentConfig()Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    .line 125
    const v0, 0x7f03024e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->rootView:Landroid/view/View;

    .line 127
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->spinner:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;

    .line 130
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->spinner:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;

    new-instance v1, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$CategorySpinnerSelectedListener;

    invoke-direct {v1, p0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$CategorySpinnerSelectedListener;-><init>(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->feedbackTitle:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->questionedOrderSelector:Lcom/wandoujia/p4/pay/widget/ListViewSpinner;

    .line 135
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->questionedOrderSelector:Lcom/wandoujia/p4/pay/widget/ListViewSpinner;

    const v1, 0x7f0e02ef

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner;->setText(I)V

    .line 136
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->otherFeedbackDescription:Landroid/widget/EditText;

    .line 139
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->updateFeedbackDescriptionUI()V

    .line 140
    invoke-direct {p0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->initServiceContactInfoViews()V

    .line 142
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->phoneInput:Landroid/widget/EditText;

    .line 144
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->qqInput:Landroid/widget/EditText;

    .line 145
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->roleInput:Landroid/widget/EditText;

    .line 146
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->zoneInput:Landroid/widget/EditText;

    .line 148
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0c04de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    invoke-direct {p0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->loadCategoies()V

    .line 151
    invoke-direct {p0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->preLoadOrders()V

    .line 153
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public updateFeedbackDescriptionUI()V
    .locals 2

    .prologue
    .line 193
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->feedbackTitle:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->isOthers:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0e0486

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 196
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->questionedOrderSelector:Lcom/wandoujia/p4/pay/widget/ListViewSpinner;

    iget-boolean v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->isOthers:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner;->setVisibility(I)V

    .line 198
    return-void

    .line 193
    :cond_0
    const v0, 0x7f0e0501

    goto :goto_0

    .line 196
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
