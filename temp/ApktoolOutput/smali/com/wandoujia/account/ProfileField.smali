.class public final enum Lcom/wandoujia/account/ProfileField;
.super Ljava/lang/Enum;
.source "ProfileField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/account/ProfileField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/account/ProfileField;

.field public static final enum ALL:Lcom/wandoujia/account/ProfileField;

.field public static final enum Device:Lcom/wandoujia/account/ProfileField;

.field public static final enum SOCIALBRIEF:Lcom/wandoujia/account/ProfileField;

.field public static final enum Social:Lcom/wandoujia/account/ProfileField;


# instance fields
.field private field:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/wandoujia/account/ProfileField;

    const-string v1, "ALL"

    const-string v2, "*"

    invoke-direct {v0, v1, v3, v2}, Lcom/wandoujia/account/ProfileField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/ProfileField;->ALL:Lcom/wandoujia/account/ProfileField;

    new-instance v0, Lcom/wandoujia/account/ProfileField;

    const-string v1, "Device"

    const-string v2, "device.*"

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/account/ProfileField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/ProfileField;->Device:Lcom/wandoujia/account/ProfileField;

    new-instance v0, Lcom/wandoujia/account/ProfileField;

    const-string v1, "Social"

    const-string v2, "social.*"

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/account/ProfileField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/ProfileField;->Social:Lcom/wandoujia/account/ProfileField;

    new-instance v0, Lcom/wandoujia/account/ProfileField;

    const-string v1, "SOCIALBRIEF"

    const-string v2, "socialBrief.*"

    invoke-direct {v0, v1, v6, v2}, Lcom/wandoujia/account/ProfileField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/ProfileField;->SOCIALBRIEF:Lcom/wandoujia/account/ProfileField;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/account/ProfileField;

    sget-object v1, Lcom/wandoujia/account/ProfileField;->ALL:Lcom/wandoujia/account/ProfileField;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/account/ProfileField;->Device:Lcom/wandoujia/account/ProfileField;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/account/ProfileField;->Social:Lcom/wandoujia/account/ProfileField;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/account/ProfileField;->SOCIALBRIEF:Lcom/wandoujia/account/ProfileField;

    aput-object v1, v0, v6

    sput-object v0, Lcom/wandoujia/account/ProfileField;->$VALUES:[Lcom/wandoujia/account/ProfileField;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput-object p3, p0, Lcom/wandoujia/account/ProfileField;->field:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/account/ProfileField;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/wandoujia/account/ProfileField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/ProfileField;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/account/ProfileField;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/wandoujia/account/ProfileField;->$VALUES:[Lcom/wandoujia/account/ProfileField;

    invoke-virtual {v0}, [Lcom/wandoujia/account/ProfileField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/account/ProfileField;

    return-object v0
.end method


# virtual methods
.method public final getField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/wandoujia/account/ProfileField;->field:Ljava/lang/String;

    return-object v0
.end method
