.class public Lcom/wandoujia/clean/db/model/GarbageLabel;
.super Ljava/lang/Object;
.source "GarbageLabel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7505eac4528eda8fL


# instance fields
.field public id:I

.field public name:Ljava/lang/String;

.field public orderType:I

.field public rank:I


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/wandoujia/clean/db/model/GarbageLabel;->id:I

    .line 17
    iput-object p2, p0, Lcom/wandoujia/clean/db/model/GarbageLabel;->name:Ljava/lang/String;

    .line 18
    iput p3, p0, Lcom/wandoujia/clean/db/model/GarbageLabel;->rank:I

    .line 19
    iput p4, p0, Lcom/wandoujia/clean/db/model/GarbageLabel;->orderType:I

    .line 20
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 24
    if-ne p0, p1, :cond_1

    .line 31
    :cond_0
    :goto_0
    return v0

    .line 27
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/clean/db/model/GarbageLabel;

    if-nez v2, :cond_2

    move v0, v1

    .line 28
    goto :goto_0

    .line 30
    :cond_2
    check-cast p1, Lcom/wandoujia/clean/db/model/GarbageLabel;

    .line 31
    iget v2, p0, Lcom/wandoujia/clean/db/model/GarbageLabel;->id:I

    iget v3, p1, Lcom/wandoujia/clean/db/model/GarbageLabel;->id:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/wandoujia/clean/db/model/GarbageLabel;->id:I

    return v0
.end method
