.class public final Lcom/wandoujia/logv3/model/packages/FlingEvent;
.super Lcom/squareup/wire/Message;
.source "FlingEvent.java"


# static fields
.field public static final DEFAULT_FLING_DIRECTION:Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;


# instance fields
.field public final extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
    .end annotation
.end field

.field public final fling_direction:Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final view_log_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;->UP:Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

    sput-object v0, Lcom/wandoujia/logv3/model/packages/FlingEvent;->DEFAULT_FLING_DIRECTION:Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/FlingEvent$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 32
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/FlingEvent$Builder;->view_log_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/FlingEvent;->view_log_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 33
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/FlingEvent$Builder;->fling_direction:Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/FlingEvent;->fling_direction:Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

    .line 34
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/FlingEvent$Builder;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/FlingEvent;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/FlingEvent$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/FlingEvent;-><init>(Lcom/wandoujia/logv3/model/packages/FlingEvent$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    if-ne p1, p0, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/FlingEvent;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 41
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/FlingEvent;

    .line 42
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/FlingEvent;->view_log_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/FlingEvent;->view_log_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/FlingEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/FlingEvent;->fling_direction:Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/FlingEvent;->fling_direction:Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/FlingEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/FlingEvent;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/FlingEvent;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/FlingEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 49
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/FlingEvent;->hashCode:I

    .line 50
    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/FlingEvent;->view_log_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/FlingEvent;->view_log_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->hashCode()I

    move-result v0

    .line 52
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/FlingEvent;->fling_direction:Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/FlingEvent;->fling_direction:Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 53
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/FlingEvent;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/FlingEvent;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 54
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/FlingEvent;->hashCode:I

    .line 56
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 51
    goto :goto_0

    :cond_3
    move v0, v1

    .line 52
    goto :goto_1
.end method
