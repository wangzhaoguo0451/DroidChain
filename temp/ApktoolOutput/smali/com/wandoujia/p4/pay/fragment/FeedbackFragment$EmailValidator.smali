.class Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$EmailValidator;
.super Ljava/lang/Object;
.source "FeedbackFragment.java"


# static fields
.field private static final EMAIL_PATTERN:Ljava/lang/String; = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

.field private static sInstance:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$EmailValidator;


# instance fields
.field private matcher:Ljava/util/regex/Matcher;

.field private pattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 529
    new-instance v0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$EmailValidator;

    invoke-direct {v0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$EmailValidator;-><init>()V

    sput-object v0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$EmailValidator;->sInstance:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$EmailValidator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    const-string v0, "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$EmailValidator;->pattern:Ljava/util/regex/Pattern;

    .line 527
    return-void
.end method

.method public static getInstance()Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$EmailValidator;
    .locals 1

    .prologue
    .line 532
    sget-object v0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$EmailValidator;->sInstance:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$EmailValidator;

    return-object v0
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 543
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    const/4 v0, 0x0

    .line 547
    :goto_0
    return v0

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$EmailValidator;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$EmailValidator;->matcher:Ljava/util/regex/Matcher;

    .line 547
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$EmailValidator;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method
