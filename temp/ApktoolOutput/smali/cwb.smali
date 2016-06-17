.class public final Lcwb;
.super Lcvz;
.source "JsonObject.java"


# instance fields
.field public final a:Lcom/wandoujia/gson/internal/LinkedTreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/wandoujia/gson/internal/LinkedTreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcvz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcvz;-><init>()V

    .line 33
    new-instance v0, Lcom/wandoujia/gson/internal/LinkedTreeMap;

    invoke-direct {v0}, Lcom/wandoujia/gson/internal/LinkedTreeMap;-><init>()V

    iput-object v0, p0, Lcwb;->a:Lcom/wandoujia/gson/internal/LinkedTreeMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcvz;
    .locals 1
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcwb;->a:Lcom/wandoujia/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/wandoujia/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcvz;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcvz;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    if-nez p2, :cond_0

    .line 55
    sget-object p2, Lcwa;->a:Lcwa;

    .line 57
    :cond_0
    iget-object v0, p0, Lcwb;->a:Lcom/wandoujia/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1, p2}, Lcom/wandoujia/gson/internal/LinkedTreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 187
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcwb;

    if-eqz v0, :cond_1

    check-cast p1, Lcwb;

    iget-object v0, p1, Lcwb;->a:Lcom/wandoujia/gson/internal/LinkedTreeMap;

    iget-object v1, p0, Lcwb;->a:Lcom/wandoujia/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, v1}, Lcom/wandoujia/gson/internal/LinkedTreeMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcwb;->a:Lcom/wandoujia/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/wandoujia/gson/internal/LinkedTreeMap;->hashCode()I

    move-result v0

    return v0
.end method
