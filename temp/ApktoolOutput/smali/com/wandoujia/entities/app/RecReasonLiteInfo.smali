.class public Lcom/wandoujia/entities/app/RecReasonLiteInfo;
.super Ljava/lang/Object;
.source "RecReasonLiteInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field label:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field reasonContent:Ljava/lang/String;

.field reasonType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/wandoujia/entities/app/RecReasonLiteInfo;->label:Ljava/util/List;

    return-object v0
.end method

.method public getReasonContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wandoujia/entities/app/RecReasonLiteInfo;->reasonContent:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonType()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/wandoujia/entities/app/RecReasonLiteInfo;->reasonType:I

    return v0
.end method
