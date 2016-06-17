.class public final Lcom/wandoujia/api/proto/IconSet;
.super Lcom/squareup/wire/Message;
.source "IconSet.java"


# static fields
.field public static final DEFAULT_PX100:Ljava/lang/String; = ""

.field public static final DEFAULT_PX24:Ljava/lang/String; = ""

.field public static final DEFAULT_PX256:Ljava/lang/String; = ""

.field public static final DEFAULT_PX36:Ljava/lang/String; = ""

.field public static final DEFAULT_PX48:Ljava/lang/String; = ""

.field public static final DEFAULT_PX68:Ljava/lang/String; = ""

.field public static final DEFAULT_PX78:Ljava/lang/String; = ""


# instance fields
.field public final px100:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final px24:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final px256:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final px36:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final px48:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final px68:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final px78:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/wandoujia/api/proto/IconSet$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 43
    iget-object v0, p1, Lcom/wandoujia/api/proto/IconSet$Builder;->px24:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/IconSet;->px24:Ljava/lang/String;

    .line 44
    iget-object v0, p1, Lcom/wandoujia/api/proto/IconSet$Builder;->px36:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/IconSet;->px36:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lcom/wandoujia/api/proto/IconSet$Builder;->px48:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/IconSet;->px48:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Lcom/wandoujia/api/proto/IconSet$Builder;->px68:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/IconSet;->px68:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lcom/wandoujia/api/proto/IconSet$Builder;->px78:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/IconSet;->px78:Ljava/lang/String;

    .line 48
    iget-object v0, p1, Lcom/wandoujia/api/proto/IconSet$Builder;->px100:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/IconSet;->px100:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lcom/wandoujia/api/proto/IconSet$Builder;->px256:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/IconSet;->px256:Ljava/lang/String;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/IconSet$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/IconSet;-><init>(Lcom/wandoujia/api/proto/IconSet$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    if-ne p1, p0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 55
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/IconSet;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 56
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/IconSet;

    .line 57
    iget-object v2, p0, Lcom/wandoujia/api/proto/IconSet;->px24:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/IconSet;->px24:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/IconSet;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/IconSet;->px36:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/IconSet;->px36:Ljava/lang/String;

    .line 58
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/IconSet;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/IconSet;->px48:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/IconSet;->px48:Ljava/lang/String;

    .line 59
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/IconSet;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/IconSet;->px68:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/IconSet;->px68:Ljava/lang/String;

    .line 60
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/IconSet;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/IconSet;->px78:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/IconSet;->px78:Ljava/lang/String;

    .line 61
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/IconSet;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/IconSet;->px100:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/IconSet;->px100:Ljava/lang/String;

    .line 62
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/IconSet;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/IconSet;->px256:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/IconSet;->px256:Ljava/lang/String;

    .line 63
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/IconSet;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 68
    iget v0, p0, Lcom/wandoujia/api/proto/IconSet;->hashCode:I

    .line 69
    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/wandoujia/api/proto/IconSet;->px24:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/IconSet;->px24:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 71
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/IconSet;->px36:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/IconSet;->px36:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 72
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/IconSet;->px48:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/api/proto/IconSet;->px48:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 73
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/IconSet;->px68:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/api/proto/IconSet;->px68:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 74
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/IconSet;->px78:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/api/proto/IconSet;->px78:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 75
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/IconSet;->px100:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/api/proto/IconSet;->px100:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 76
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/IconSet;->px256:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/IconSet;->px256:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 77
    iput v0, p0, Lcom/wandoujia/api/proto/IconSet;->hashCode:I

    .line 79
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 70
    goto :goto_0

    :cond_3
    move v0, v1

    .line 71
    goto :goto_1

    :cond_4
    move v0, v1

    .line 72
    goto :goto_2

    :cond_5
    move v0, v1

    .line 73
    goto :goto_3

    :cond_6
    move v0, v1

    .line 74
    goto :goto_4

    :cond_7
    move v0, v1

    .line 75
    goto :goto_5
.end method
