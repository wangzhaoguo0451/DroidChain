.class final enum Lcom/wandoujia/gson/LongSerializationPolicy$2;
.super Lcom/wandoujia/gson/LongSerializationPolicy;
.source "LongSerializationPolicy.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/gson/LongSerializationPolicy;-><init>(Ljava/lang/String;ILcom/wandoujia/gson/LongSerializationPolicy$1;)V

    return-void
.end method


# virtual methods
.method public final serialize(Ljava/lang/Long;)Lcvz;
    .locals 2
    .parameter

    .prologue
    .line 47
    new-instance v0, Lcwd;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcwd;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
