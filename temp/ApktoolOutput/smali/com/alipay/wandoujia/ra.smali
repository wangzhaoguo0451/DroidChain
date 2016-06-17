.class public final enum Lcom/alipay/wandoujia/ra;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic H:[Lcom/alipay/wandoujia/ra;

.field public static final enum a:Lcom/alipay/wandoujia/ra;

.field public static final enum b:Lcom/alipay/wandoujia/ra;

.field public static final enum c:Lcom/alipay/wandoujia/ra;

.field public static final enum d:Lcom/alipay/wandoujia/ra;

.field public static final enum e:Lcom/alipay/wandoujia/ra;

.field public static final enum f:Lcom/alipay/wandoujia/ra;

.field public static final enum g:Lcom/alipay/wandoujia/ra;

.field public static final enum h:Lcom/alipay/wandoujia/ra;

.field public static final enum i:Lcom/alipay/wandoujia/ra;

.field public static final enum j:Lcom/alipay/wandoujia/ra;

.field public static final enum k:Lcom/alipay/wandoujia/ra;

.field public static final enum l:Lcom/alipay/wandoujia/ra;

.field public static final enum m:Lcom/alipay/wandoujia/ra;

.field public static final enum n:Lcom/alipay/wandoujia/ra;

.field public static final enum o:Lcom/alipay/wandoujia/ra;

.field public static final enum p:Lcom/alipay/wandoujia/ra;

.field public static final enum q:Lcom/alipay/wandoujia/ra;

.field public static final enum r:Lcom/alipay/wandoujia/ra;

.field public static final enum s:Lcom/alipay/wandoujia/ra;

.field public static final enum t:Lcom/alipay/wandoujia/ra;

.field public static final enum u:Lcom/alipay/wandoujia/ra;

.field public static final enum v:Lcom/alipay/wandoujia/ra;

.field public static final enum w:Lcom/alipay/wandoujia/ra;

.field public static final enum x:Lcom/alipay/wandoujia/ra;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Lorg/json/JSONObject;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Z

.field private G:Z

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 19
    new-instance v0, Lcom/alipay/wandoujia/ra;

    const-string v1, "Submit"

    .line 22
    const-string v2, "submit"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/wandoujia/ra;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/ra;->a:Lcom/alipay/wandoujia/ra;

    .line 24
    new-instance v0, Lcom/alipay/wandoujia/ra;

    const-string v1, "None"

    const-string v2, "js://none"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/wandoujia/ra;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/ra;->b:Lcom/alipay/wandoujia/ra;

    .line 26
    new-instance v0, Lcom/alipay/wandoujia/ra;

    const-string v1, "Cancel"

    const-string v2, "js://cancle"

    invoke-direct {v0, v1, v6, v2}, Lcom/alipay/wandoujia/ra;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/ra;->c:Lcom/alipay/wandoujia/ra;

    .line 28
    new-instance v0, Lcom/alipay/wandoujia/ra;

    const-string v1, "Exit"

    const-string v2, "js://exit"

    invoke-direct {v0, v1, v7, v2}, Lcom/alipay/wandoujia/ra;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/ra;->d:Lcom/alipay/wandoujia/ra;

    .line 30
    new-instance v0, Lcom/alipay/wandoujia/ra;

    const-string v1, "SwitchFull"

    const-string v2, "js://fullpay"

    invoke-direct {v0, v1, v8, v2}, Lcom/alipay/wandoujia/ra;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/ra;->e:Lcom/alipay/wandoujia/ra;

    .line 32
    new-instance v0, Lcom/alipay/wandoujia/ra;

    const-string v1, "Fullpay"

    const/4 v2, 0x5

    const-string v3, "js://fullpay"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/wandoujia/ra;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/ra;->f:Lcom/alipay/wandoujia/ra;

    .line 34
    new-instance v0, Lcom/alipay/wandoujia/ra;

    const-string v1, "DisableConfirm"

    const/4 v2, 0x6

    const-string v3, "js://disable_submit"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/wandoujia/ra;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/ra;->g:Lcom/alipay/wandoujia/ra;

    .line 36
    new-instance v0, Lcom/alipay/wandoujia/ra;

    const-string v1, "Refresh"

    const/4 v2, 0x7

    const-string v3, "js://refresh"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/wandoujia/ra;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/ra;->h:Lcom/alipay/wandoujia/ra;

    .line 38
    new-instance v0, Lcom/alipay/wandoujia/ra;

    const-string v1, "Redo"

    const/16 v2, 0x8

    const-string v3, "js://redo"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/wandoujia/ra;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/ra;->i:Lcom/alipay/wandoujia/ra;

    .line 40
    new-instance v0, Lcom/alipay/wandoujia/ra;

    const-string v1, "Back"

    const/16 v2, 0x9

    const-string v3, "js://back"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/wandoujia/ra;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/ra;->j:Lcom/alipay/wandoujia/ra;

    .line 42
    new-instance v0, Lcom/alipay/wandoujia/ra;

    const-string v1, "SwitchHint"

    const/16 v2, 0xa

    const-string v3, "js://switch"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/wandoujia/ra;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/ra;->k:Lcom/alipay/wandoujia/ra;

    .line 44
    new-instance v0, Lcom/alipay/wandoujia/ra;

    const-string v1, "ReadSms"

    const/16 v2, 0xb

    const-string v3, "js://readsms"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/wandoujia/ra;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/ra;->l:Lcom/alipay/wandoujia/ra;

    .line 46
    new-instance v0, Lcom/alipay/wandoujia/ra;

    const-string v1, "Toast"

    const/16 v2, 0xc

    const-string v3, "js://toast"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/wandoujia/ra;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/ra;->m:Lcom/alipay/wandoujia/ra;

    .line 48
    new-instance v0, Lcom/alipay/wandoujia/ra;

    const-string v1, "Success"

    const/16 v2, 0xd

    const-string v3, "js://success"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/wandoujia/ra;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/ra;->n:Lcom/alipay/wandoujia/ra;

    .line 50
    new-instance v0, Lcom/alipay/wandoujia/ra;

    const-string v1, "Guide"

    const/16 v2, 0xe

    const-string v3, "js://guide"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/wandoujia/ra;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/ra;->o:Lcom/alipay/wandoujia/ra;

    .line 52
    new-instance v0, Lcom/alipay/wandoujia/ra;

    const-string v1, "Update"

    const/16 v2, 0xf

    const-string v3, "js://update"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/wandoujia/ra;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/ra;->p:Lcom/alipay/wandoujia/ra;

    .line 54
    new-instance v0, Lcom/alipay/wandoujia/ra;

    const-string v1, "OpenWeb"

    const/16 v2, 0x10

    const-string v3, "js://openweb"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/wandoujia/ra;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/ra;->q:Lcom/alipay/wandoujia/ra;

    .line 56
    new-instance v0, Lcom/alipay/wandoujia/ra;

    const-string v1, "Confirm"

    const/16 v2, 0x11

    const-string v3, "js://confirm"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/wandoujia/ra;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/ra;->r:Lcom/alipay/wandoujia/ra;

    .line 58
    new-instance v0, Lcom/alipay/wandoujia/ra;

    const-string v1, "ValueChanged"

    const/16 v2, 0x12

    const-string v3, "js://valueChanged"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/wandoujia/ra;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/ra;->s:Lcom/alipay/wandoujia/ra;

    .line 60
    new-instance v0, Lcom/alipay/wandoujia/ra;

    const-string v1, "Count"

    const/16 v2, 0x13

    const-string v3, "js://count"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/wandoujia/ra;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/ra;->t:Lcom/alipay/wandoujia/ra;

    .line 62
    new-instance v0, Lcom/alipay/wandoujia/ra;

    const-string v1, "ReadBankCard"

    const/16 v2, 0x14

    const-string v3, "js://readBankCard"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/wandoujia/ra;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/ra;->u:Lcom/alipay/wandoujia/ra;

    .line 64
    new-instance v0, Lcom/alipay/wandoujia/ra;

    const-string v1, "Dismiss"

    const/16 v2, 0x15

    const-string v3, "js://dismiss"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/wandoujia/ra;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/ra;->v:Lcom/alipay/wandoujia/ra;

    .line 66
    new-instance v0, Lcom/alipay/wandoujia/ra;

    const-string v1, "FindPwd"

    const/16 v2, 0x16

    const-string v3, "js://findpwd"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/wandoujia/ra;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/ra;->w:Lcom/alipay/wandoujia/ra;

    .line 68
    new-instance v0, Lcom/alipay/wandoujia/ra;

    const-string v1, "WapPay"

    const/16 v2, 0x17

    const-string v3, "js://wappay"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/wandoujia/ra;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/wandoujia/ra;->x:Lcom/alipay/wandoujia/ra;

    .line 17
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/alipay/wandoujia/ra;

    sget-object v1, Lcom/alipay/wandoujia/ra;->a:Lcom/alipay/wandoujia/ra;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/wandoujia/ra;->b:Lcom/alipay/wandoujia/ra;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/wandoujia/ra;->c:Lcom/alipay/wandoujia/ra;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/wandoujia/ra;->d:Lcom/alipay/wandoujia/ra;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/wandoujia/ra;->e:Lcom/alipay/wandoujia/ra;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/wandoujia/ra;->f:Lcom/alipay/wandoujia/ra;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/wandoujia/ra;->g:Lcom/alipay/wandoujia/ra;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/wandoujia/ra;->h:Lcom/alipay/wandoujia/ra;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alipay/wandoujia/ra;->i:Lcom/alipay/wandoujia/ra;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alipay/wandoujia/ra;->j:Lcom/alipay/wandoujia/ra;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alipay/wandoujia/ra;->k:Lcom/alipay/wandoujia/ra;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alipay/wandoujia/ra;->l:Lcom/alipay/wandoujia/ra;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alipay/wandoujia/ra;->m:Lcom/alipay/wandoujia/ra;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alipay/wandoujia/ra;->n:Lcom/alipay/wandoujia/ra;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alipay/wandoujia/ra;->o:Lcom/alipay/wandoujia/ra;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/alipay/wandoujia/ra;->p:Lcom/alipay/wandoujia/ra;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/alipay/wandoujia/ra;->q:Lcom/alipay/wandoujia/ra;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/alipay/wandoujia/ra;->r:Lcom/alipay/wandoujia/ra;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/alipay/wandoujia/ra;->s:Lcom/alipay/wandoujia/ra;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/alipay/wandoujia/ra;->t:Lcom/alipay/wandoujia/ra;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/alipay/wandoujia/ra;->u:Lcom/alipay/wandoujia/ra;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/alipay/wandoujia/ra;->v:Lcom/alipay/wandoujia/ra;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/alipay/wandoujia/ra;->w:Lcom/alipay/wandoujia/ra;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/alipay/wandoujia/ra;->x:Lcom/alipay/wandoujia/ra;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/wandoujia/ra;->H:[Lcom/alipay/wandoujia/ra;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    iput-object p3, p0, Lcom/alipay/wandoujia/ra;->y:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public static a(Lafc;)Lcom/alipay/wandoujia/ra;
    .locals 7
    .parameter

    .prologue
    .line 117
    const/4 v1, 0x0

    .line 118
    invoke-static {}, Lcom/alipay/wandoujia/ra;->values()[Lcom/alipay/wandoujia/ra;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v4, :cond_1

    .line 123
    if-nez v1, :cond_0

    .line 124
    sget-object v1, Lcom/alipay/wandoujia/ra;->a:Lcom/alipay/wandoujia/ra;

    .line 126
    :cond_0
    iget-object v0, p0, Lafc;->a:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/wandoujia/ra;->z:Ljava/lang/String;

    .line 127
    invoke-virtual {p0}, Lafc;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/wandoujia/ra;->A:Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Lafc;->b()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/wandoujia/ra;->B:Lorg/json/JSONObject;

    .line 129
    iget-object v0, p0, Lafc;->b:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/wandoujia/ra;->C:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lafc;->c:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/wandoujia/ra;->D:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lafc;->d:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/wandoujia/ra;->E:Ljava/lang/String;

    .line 132
    iget-boolean v0, p0, Lafc;->e:Z

    iput-boolean v0, v1, Lcom/alipay/wandoujia/ra;->F:Z

    .line 133
    iget-boolean v0, p0, Lafc;->f:Z

    iput-boolean v0, v1, Lcom/alipay/wandoujia/ra;->G:Z

    .line 135
    return-object v1

    .line 118
    :cond_1
    aget-object v0, v3, v2

    .line 119
    iget-object v5, p0, Lafc;->a:Ljava/lang/String;

    iget-object v6, v0, Lcom/alipay/wandoujia/ra;->y:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 118
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/wandoujia/ra;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/alipay/wandoujia/ra;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/wandoujia/ra;

    return-object v0
.end method

.method public static values()[Lcom/alipay/wandoujia/ra;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/wandoujia/ra;->H:[Lcom/alipay/wandoujia/ra;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/wandoujia/ra;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/wandoujia/ra;->z:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alipay/wandoujia/ra;->A:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/wandoujia/ra;->B:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alipay/wandoujia/ra;->C:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/wandoujia/ra;->D:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/wandoujia/ra;->E:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/alipay/wandoujia/ra;->F:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/alipay/wandoujia/ra;->G:Z

    return v0
.end method
