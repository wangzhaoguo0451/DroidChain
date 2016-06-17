.class final enum Lcom/wandoujia/gson/LongSerializationPolicy$1;
.super Lcom/wandoujia/gson/LongSerializationPolicy;
.source "LongSerializationPolicy.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/gson/LongSerializationPolicy;-><init>(Ljava/lang/String;ILcom/wandoujia/gson/LongSerializationPolicy$1;)V

    return-void
.end method


# virtual methods
.method public final serialize(Ljava/lang/Long;)Lcvz;
    .locals 1
    .parameter

    .prologue
    .line 36
    new-instance v0, Lcwd;

    invoke-direct {v0, p1}, Lcwd;-><init>(Ljava/lang/Number;)V

    return-object v0
.end method
