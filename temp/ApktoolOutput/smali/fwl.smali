.class final Lfwl;
.super Lfxd;
.source "GetFeedbackCommentsDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfxd",
        "<",
        "Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lfxd;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Lfwl;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;
    .locals 4
    .parameter

    .prologue
    .line 26
    const-string v0, "public"

    const-string v1, "public_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 28
    const-string v1, "{{satisfaction.rating_section}}"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 32
    const-string v1, "\"value\":\"closed\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"isClosed\":true}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    :cond_0
    invoke-super {p0, v0}, Lfxd;->process(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;

    return-object v0
.end method


# virtual methods
.method public final synthetic process(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 21
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lfwl;->a(Ljava/lang/String;)Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic process(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lfwl;->a(Ljava/lang/String;)Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;

    move-result-object v0

    return-object v0
.end method
