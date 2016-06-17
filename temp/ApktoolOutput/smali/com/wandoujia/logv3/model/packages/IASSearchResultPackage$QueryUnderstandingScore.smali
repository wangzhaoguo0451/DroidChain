.class public final Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore;
.super Lcom/squareup/wire/Message;
.source "IASSearchResultPackage.java"


# static fields
.field public static final DEFAULT_CONTENT_VERTICAL_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_SCORE:Ljava/lang/Float;


# instance fields
.field public final content_vertical_type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final score:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore;->DEFAULT_SCORE:Ljava/lang/Float;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 126
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore$Builder;->content_vertical_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore;->content_vertical_type:Ljava/lang/String;

    .line 127
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore$Builder;->score:Ljava/lang/Float;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore;->score:Ljava/lang/Float;

    .line 128
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore;-><init>(Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 132
    if-ne p1, p0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 134
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore;

    .line 135
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore;->content_vertical_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore;->content_vertical_type:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore;->score:Ljava/lang/Float;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore;->score:Ljava/lang/Float;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 141
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore;->hashCode:I

    .line 142
    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore;->content_vertical_type:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore;->content_vertical_type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 144
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore;->score:Ljava/lang/Float;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore;->score:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 145
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore;->hashCode:I

    .line 147
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 143
    goto :goto_0
.end method
