.class public final Lcom/wandoujia/logv3/model/packages/ViewLogPackage;
.super Lcom/squareup/wire/Message;
.source "ViewLogPackage.java"


# static fields
.field public static final DEFAULT_ACTION:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action; = null

.field public static final DEFAULT_ELEMENT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element; = null

.field public static final DEFAULT_MODULE:Ljava/lang/String; = ""

.field public static final DEFAULT_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_VALUE:Ljava/lang/Long;


# instance fields
.field public final action:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final element:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final index:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
    .end annotation
.end field

.field public final module:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final url_package:Lcom/wandoujia/logv3/model/packages/UrlPackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
    .end annotation
.end field

.field public final value:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->DEFAULT_ELEMENT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    .line 20
    sget-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->REDIRECT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->DEFAULT_ACTION:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    .line 23
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->DEFAULT_VALUE:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 69
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->url_package:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->url_package:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    .line 70
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->element:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->element:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    .line 71
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->action:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->action:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    .line 72
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->module:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->module:Ljava/lang/String;

    .line 73
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->index:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->index:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;

    .line 74
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->name:Ljava/lang/String;

    .line 75
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->value:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->value:Ljava/lang/Long;

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;-><init>(Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 80
    if-ne p1, p0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 82
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 83
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->url_package:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->url_package:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->element:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->element:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->action:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->action:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->module:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->module:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->index:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->index:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->value:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->value:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 94
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->hashCode:I

    .line 95
    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->url_package:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->url_package:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/UrlPackage;->hashCode()I

    move-result v0

    .line 97
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->element:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->element:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 98
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->action:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->action:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 99
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->module:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->module:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 100
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->index:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->index:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 101
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->name:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 102
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->value:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->value:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 103
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->hashCode:I

    .line 105
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 96
    goto :goto_0

    :cond_3
    move v0, v1

    .line 97
    goto :goto_1

    :cond_4
    move v0, v1

    .line 98
    goto :goto_2

    :cond_5
    move v0, v1

    .line 99
    goto :goto_3

    :cond_6
    move v0, v1

    .line 100
    goto :goto_4

    :cond_7
    move v0, v1

    .line 101
    goto :goto_5
.end method
