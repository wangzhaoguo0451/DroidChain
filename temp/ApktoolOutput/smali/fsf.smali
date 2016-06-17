.class final Lfsf;
.super Lfxd;
.source "ZendeskHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfxd",
        "<",
        "Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$ForTicketId;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 438
    invoke-direct {p0}, Lfxd;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 438
    invoke-direct {p0}, Lfsf;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$ForTicketId;
    .locals 1
    .parameter

    .prologue
    .line 444
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 447
    :cond_0
    invoke-super {p0, p1}, Lfxd;->process(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$ForTicketId;

    return-object v0
.end method


# virtual methods
.method public final synthetic process(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 438
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lfsf;->a(Ljava/lang/String;)Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$ForTicketId;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic process(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 438
    invoke-direct {p0, p1}, Lfsf;->a(Ljava/lang/String;)Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$ForTicketId;

    move-result-object v0

    return-object v0
.end method
