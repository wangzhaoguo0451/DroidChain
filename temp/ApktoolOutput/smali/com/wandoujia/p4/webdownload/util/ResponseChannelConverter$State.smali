.class public final enum Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;
.super Ljava/lang/Enum;
.source "ResponseChannelConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;

.field public static final enum READ_FIXED_LENGTH_CONTENT:Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;

.field public static final enum READ_HEADER:Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;

.field public static final enum READ_INITIAL:Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;

.field public static final enum READ_VARIABLE_LENGTH_CONTENT:Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;

.field public static final enum SKIP_CONTROL_CHARS:Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;

    const-string v1, "SKIP_CONTROL_CHARS"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;->SKIP_CONTROL_CHARS:Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;

    .line 45
    new-instance v0, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;

    const-string v1, "READ_INITIAL"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;->READ_INITIAL:Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;

    .line 46
    new-instance v0, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;

    const-string v1, "READ_HEADER"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;->READ_HEADER:Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;

    .line 47
    new-instance v0, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;

    const-string v1, "READ_VARIABLE_LENGTH_CONTENT"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;->READ_VARIABLE_LENGTH_CONTENT:Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;

    .line 48
    new-instance v0, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;

    const-string v1, "READ_FIXED_LENGTH_CONTENT"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;->READ_FIXED_LENGTH_CONTENT:Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;

    .line 43
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;

    sget-object v1, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;->SKIP_CONTROL_CHARS:Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;->READ_INITIAL:Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;->READ_HEADER:Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;->READ_VARIABLE_LENGTH_CONTENT:Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;->READ_FIXED_LENGTH_CONTENT:Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;->$VALUES:[Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;
    .locals 1
    .parameter

    .prologue
    .line 43
    const-class v0, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;->$VALUES:[Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter$State;

    return-object v0
.end method
