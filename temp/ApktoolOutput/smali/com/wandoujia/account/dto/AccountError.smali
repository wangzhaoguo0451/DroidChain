.class public final enum Lcom/wandoujia/account/dto/AccountError;
.super Ljava/lang/Enum;
.source "AccountError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/account/dto/AccountError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/account/dto/AccountError;

.field public static final enum AVATAR_ERROR:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum CALLBACK_PARAMETER_MISSING:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum CODE_NOT_FOUND:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum COMMON_ERROR:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum EMAIL_BIND_DUPLICATED:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum EMAIL_DUPLICATED:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum ERROR_REACH_LIMIT:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum NEED_SECCODE:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum NEED_UPDATE_CLIENT_ERROR:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum NEED_VERIFY_ACCOUNT:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum NICK_INVALID:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum NICK_TOO_LONG:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum PARAMETER_ERROR:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum PASSWORD_DIFFERENT:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum PASSWORD_INVALID:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum PASSWORD_NEED_RESET:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum PASSWORD_WRONG:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum PERMISSION_DENIED:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum QQ_ALREADY_BIND:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum QQ_BIND_ERROR:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum RENREN_ALREADY_BIND:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum RENREN_BIND_ERROR:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum SECCODE_NOT_MATCH:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum SINA_ALREADY_BIND:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum SINA_BIND_ERROR:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum SOCIAL_ACTIVE_NOTFOUND_ERROR:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum SOCIAL_ALREADY_BIND:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum SOCIAL_UNBIND_REJECTED:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum SUCCESS:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum TELEPHONE_BIND_DUPLICATED:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum TELEPHONE_DUPLICATED:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum TELEPHONE_INVALID:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum UID_SHOULD_BE_NULL:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum UID_SHOULD_NOTBE_NULL:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum USERNAME_DUPLICATED:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum USERNAME_INVALID:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum USERNAME_PASSWORD_WRONG:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum USER_ALREADY_EXIST:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum USER_NOT_ENABLED:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum USER_NOT_EXIST:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum USER_NOT_FOUND:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum USER_REQUIRED:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum VERIFICATION_NOT_FINISHED:Lcom/wandoujia/account/dto/AccountError;

.field public static final enum VERIFICATION_TOKEN_EXPIRED:Lcom/wandoujia/account/dto/AccountError;


# instance fields
.field private final error:I

.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4
    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "SUCCESS"

    const-string v2, "success"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->SUCCESS:Lcom/wandoujia/account/dto/AccountError;

    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "NEED_SECCODE"

    const/16 v2, 0x2711

    const-string v3, "seccode.need"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->NEED_SECCODE:Lcom/wandoujia/account/dto/AccountError;

    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "SECCODE_NOT_MATCH"

    const/16 v2, 0x2714

    const-string v3, "seccode.reject"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->SECCODE_NOT_MATCH:Lcom/wandoujia/account/dto/AccountError;

    .line 5
    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "USERNAME_DUPLICATED"

    const/16 v2, 0x3e9

    const-string v3, "username.duplicated"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->USERNAME_DUPLICATED:Lcom/wandoujia/account/dto/AccountError;

    .line 6
    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "USERNAME_INVALID"

    const/16 v2, 0x3ee

    const-string v3, "username.invalid"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->USERNAME_INVALID:Lcom/wandoujia/account/dto/AccountError;

    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "PASSWORD_INVALID"

    const/4 v2, 0x5

    const/16 v3, 0x3ef

    const-string v4, "password.invalid"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->PASSWORD_INVALID:Lcom/wandoujia/account/dto/AccountError;

    .line 7
    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "USER_NOT_EXIST"

    const/4 v2, 0x6

    const/16 v3, 0x3f0

    const-string v4, "username.not.exist"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->USER_NOT_EXIST:Lcom/wandoujia/account/dto/AccountError;

    .line 8
    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "NICK_INVALID"

    const/4 v2, 0x7

    const/16 v3, 0x3f1

    const-string v4, "nick.invalid"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->NICK_INVALID:Lcom/wandoujia/account/dto/AccountError;

    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "USERNAME_PASSWORD_WRONG"

    const/16 v2, 0x8

    const/16 v3, 0x3f2

    const-string v4, "wrong.username.password"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->USERNAME_PASSWORD_WRONG:Lcom/wandoujia/account/dto/AccountError;

    .line 9
    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "USER_NOT_ENABLED"

    const/16 v2, 0x9

    const/16 v3, 0x3f3

    const-string v4, "user.has.disabled"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->USER_NOT_ENABLED:Lcom/wandoujia/account/dto/AccountError;

    .line 10
    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "USER_REQUIRED"

    const/16 v2, 0xa

    const/16 v3, 0x3f4

    const-string v4, "permission.denied"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->USER_REQUIRED:Lcom/wandoujia/account/dto/AccountError;

    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "PERMISSION_DENIED"

    const/16 v2, 0xb

    const/16 v3, 0x3f5

    const-string v4, "permission.denied"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->PERMISSION_DENIED:Lcom/wandoujia/account/dto/AccountError;

    .line 11
    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "PARAMETER_ERROR"

    const/16 v2, 0xc

    const/16 v3, 0x3f6

    const-string v4, "parameter.error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->PARAMETER_ERROR:Lcom/wandoujia/account/dto/AccountError;

    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "CALLBACK_PARAMETER_MISSING"

    const/16 v2, 0xd

    const/16 v3, 0x3f7

    const-string v4, "parameter.missing"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->CALLBACK_PARAMETER_MISSING:Lcom/wandoujia/account/dto/AccountError;

    .line 12
    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "PASSWORD_DIFFERENT"

    const/16 v2, 0xe

    const/16 v3, 0x3f8

    const-string v4, "password.differ"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->PASSWORD_DIFFERENT:Lcom/wandoujia/account/dto/AccountError;

    .line 13
    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "USER_NOT_FOUND"

    const/16 v2, 0xf

    const/16 v3, 0x3f9

    const-string v4, "account.doesnot.exist"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->USER_NOT_FOUND:Lcom/wandoujia/account/dto/AccountError;

    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "USER_ALREADY_EXIST"

    const/16 v2, 0x10

    const/16 v3, 0x3fa

    const-string v4, "user.already.exist"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->USER_ALREADY_EXIST:Lcom/wandoujia/account/dto/AccountError;

    .line 14
    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "PASSWORD_WRONG"

    const/16 v2, 0x11

    const/16 v3, 0x3fb

    const-string v4, "wrong.password"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->PASSWORD_WRONG:Lcom/wandoujia/account/dto/AccountError;

    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "PASSWORD_NEED_RESET"

    const/16 v2, 0x12

    const/16 v3, 0x3fc

    const-string v4, "password.expired"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->PASSWORD_NEED_RESET:Lcom/wandoujia/account/dto/AccountError;

    .line 15
    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "NICK_TOO_LONG"

    const/16 v2, 0x13

    const/16 v3, 0x3fd

    const-string v4, "nick.too.long"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->NICK_TOO_LONG:Lcom/wandoujia/account/dto/AccountError;

    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "TELEPHONE_INVALID"

    const/16 v2, 0x14

    const/16 v3, 0x3fe

    const-string v4, "telephone.invalid"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->TELEPHONE_INVALID:Lcom/wandoujia/account/dto/AccountError;

    .line 16
    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "AVATAR_ERROR"

    const/16 v2, 0x15

    const/16 v3, 0x4e21

    const-string v4, "avatar.error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->AVATAR_ERROR:Lcom/wandoujia/account/dto/AccountError;

    .line 17
    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "SOCIAL_ACTIVE_NOTFOUND_ERROR"

    const/16 v2, 0x16

    const/16 v3, 0x7531

    const-string v4, "parameter.missing"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->SOCIAL_ACTIVE_NOTFOUND_ERROR:Lcom/wandoujia/account/dto/AccountError;

    .line 18
    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "SINA_BIND_ERROR"

    const/16 v2, 0x17

    const/16 v3, 0x7533

    const-string v4, "sina.bind.failure"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->SINA_BIND_ERROR:Lcom/wandoujia/account/dto/AccountError;

    .line 19
    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "QQ_BIND_ERROR"

    const/16 v2, 0x18

    const/16 v3, 0x7534

    const-string v4, "qq.bind.failure"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->QQ_BIND_ERROR:Lcom/wandoujia/account/dto/AccountError;

    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "RENREN_BIND_ERROR"

    const/16 v2, 0x19

    const/16 v3, 0x7535

    const-string v4, "renren.bind.failure"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->RENREN_BIND_ERROR:Lcom/wandoujia/account/dto/AccountError;

    .line 20
    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "SOCIAL_ALREADY_BIND"

    const/16 v2, 0x1a

    const/16 v3, 0x7536

    const-string v4, "social.already.bind"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->SOCIAL_ALREADY_BIND:Lcom/wandoujia/account/dto/AccountError;

    .line 21
    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "SOCIAL_UNBIND_REJECTED"

    const/16 v2, 0x1b

    const/16 v3, 0x7537

    const-string v4, "social.unbind.rejected"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->SOCIAL_UNBIND_REJECTED:Lcom/wandoujia/account/dto/AccountError;

    .line 22
    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "SINA_ALREADY_BIND"

    const/16 v2, 0x1c

    const/16 v3, 0x7538

    const-string v4, "sina.already.bind"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->SINA_ALREADY_BIND:Lcom/wandoujia/account/dto/AccountError;

    .line 23
    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "QQ_ALREADY_BIND"

    const/16 v2, 0x1d

    const/16 v3, 0x7539

    const-string v4, "qq.already.bind"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->QQ_ALREADY_BIND:Lcom/wandoujia/account/dto/AccountError;

    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "RENREN_ALREADY_BIND"

    const/16 v2, 0x1e

    const/16 v3, 0x753a

    const-string v4, "renren.already.bind"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->RENREN_ALREADY_BIND:Lcom/wandoujia/account/dto/AccountError;

    .line 24
    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "UID_SHOULD_BE_NULL"

    const/16 v2, 0x1f

    const/16 v3, 0x271f

    const-string v4, "error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->UID_SHOULD_BE_NULL:Lcom/wandoujia/account/dto/AccountError;

    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "UID_SHOULD_NOTBE_NULL"

    const/16 v2, 0x20

    const/16 v3, 0x2720

    const-string v4, "parameter.missing"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->UID_SHOULD_NOTBE_NULL:Lcom/wandoujia/account/dto/AccountError;

    .line 25
    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "CODE_NOT_FOUND"

    const/16 v2, 0x21

    const/16 v3, 0x4e30

    const-string v4, "code.not.found"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->CODE_NOT_FOUND:Lcom/wandoujia/account/dto/AccountError;

    .line 26
    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "EMAIL_DUPLICATED"

    const/16 v2, 0x22

    const/16 v3, 0x4e31

    const-string v4, "email.duplicated"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->EMAIL_DUPLICATED:Lcom/wandoujia/account/dto/AccountError;

    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "TELEPHONE_DUPLICATED"

    const/16 v2, 0x23

    const/16 v3, 0x4e32

    const-string v4, "telephone.duplicated"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->TELEPHONE_DUPLICATED:Lcom/wandoujia/account/dto/AccountError;

    .line 27
    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "EMAIL_BIND_DUPLICATED"

    const/16 v2, 0x24

    const/16 v3, 0x4e33

    const-string v4, "email.bind.duplicated"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->EMAIL_BIND_DUPLICATED:Lcom/wandoujia/account/dto/AccountError;

    .line 28
    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "TELEPHONE_BIND_DUPLICATED"

    const/16 v2, 0x25

    const/16 v3, 0x4e34

    const-string v4, "telephone.bind.duplicated"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->TELEPHONE_BIND_DUPLICATED:Lcom/wandoujia/account/dto/AccountError;

    .line 30
    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "ERROR_REACH_LIMIT"

    const/16 v2, 0x26

    const/16 v3, 0x4e35

    const-string v4, "error.reach.limit"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->ERROR_REACH_LIMIT:Lcom/wandoujia/account/dto/AccountError;

    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "VERIFICATION_NOT_FINISHED"

    const/16 v2, 0x27

    const/16 v3, 0x4e36

    const-string v4, "verification.not.finished"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->VERIFICATION_NOT_FINISHED:Lcom/wandoujia/account/dto/AccountError;

    .line 31
    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "VERIFICATION_TOKEN_EXPIRED"

    const/16 v2, 0x28

    const/16 v3, 0x4e37

    const-string v4, "verification.token.expired"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->VERIFICATION_TOKEN_EXPIRED:Lcom/wandoujia/account/dto/AccountError;

    .line 32
    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "COMMON_ERROR"

    const/16 v2, 0x29

    const v3, 0x1869f

    const-string v4, "error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->COMMON_ERROR:Lcom/wandoujia/account/dto/AccountError;

    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "NEED_UPDATE_CLIENT_ERROR"

    const/16 v2, 0x2a

    const v3, 0x9c41

    const-string v4, "need.update.client.error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->NEED_UPDATE_CLIENT_ERROR:Lcom/wandoujia/account/dto/AccountError;

    .line 33
    new-instance v0, Lcom/wandoujia/account/dto/AccountError;

    const-string v1, "NEED_VERIFY_ACCOUNT"

    const/16 v2, 0x2b

    const v3, 0x1869e

    const-string v4, "account.verify.need"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/account/dto/AccountError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->NEED_VERIFY_ACCOUNT:Lcom/wandoujia/account/dto/AccountError;

    .line 3
    const/16 v0, 0x2c

    new-array v0, v0, [Lcom/wandoujia/account/dto/AccountError;

    sget-object v1, Lcom/wandoujia/account/dto/AccountError;->SUCCESS:Lcom/wandoujia/account/dto/AccountError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/account/dto/AccountError;->NEED_SECCODE:Lcom/wandoujia/account/dto/AccountError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/account/dto/AccountError;->SECCODE_NOT_MATCH:Lcom/wandoujia/account/dto/AccountError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wandoujia/account/dto/AccountError;->USERNAME_DUPLICATED:Lcom/wandoujia/account/dto/AccountError;

    aput-object v1, v0, v8

    sget-object v1, Lcom/wandoujia/account/dto/AccountError;->USERNAME_INVALID:Lcom/wandoujia/account/dto/AccountError;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->PASSWORD_INVALID:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->USER_NOT_EXIST:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->NICK_INVALID:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->USERNAME_PASSWORD_WRONG:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->USER_NOT_ENABLED:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->USER_REQUIRED:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->PERMISSION_DENIED:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->PARAMETER_ERROR:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->CALLBACK_PARAMETER_MISSING:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->PASSWORD_DIFFERENT:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->USER_NOT_FOUND:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->USER_ALREADY_EXIST:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->PASSWORD_WRONG:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->PASSWORD_NEED_RESET:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->NICK_TOO_LONG:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->TELEPHONE_INVALID:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->AVATAR_ERROR:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->SOCIAL_ACTIVE_NOTFOUND_ERROR:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->SINA_BIND_ERROR:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->QQ_BIND_ERROR:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->RENREN_BIND_ERROR:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->SOCIAL_ALREADY_BIND:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->SOCIAL_UNBIND_REJECTED:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->SINA_ALREADY_BIND:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->QQ_ALREADY_BIND:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->RENREN_ALREADY_BIND:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->UID_SHOULD_BE_NULL:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->UID_SHOULD_NOTBE_NULL:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->CODE_NOT_FOUND:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->EMAIL_DUPLICATED:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->TELEPHONE_DUPLICATED:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->EMAIL_BIND_DUPLICATED:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->TELEPHONE_BIND_DUPLICATED:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->ERROR_REACH_LIMIT:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->VERIFICATION_NOT_FINISHED:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->VERIFICATION_TOKEN_EXPIRED:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->COMMON_ERROR:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->NEED_UPDATE_CLIENT_ERROR:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->NEED_VERIFY_ACCOUNT:Lcom/wandoujia/account/dto/AccountError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/account/dto/AccountError;->$VALUES:[Lcom/wandoujia/account/dto/AccountError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lcom/wandoujia/account/dto/AccountError;->error:I

    .line 41
    iput-object p4, p0, Lcom/wandoujia/account/dto/AccountError;->message:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static byError(I)Lcom/wandoujia/account/dto/AccountError;
    .locals 5
    .parameter

    .prologue
    .line 53
    invoke-static {}, Lcom/wandoujia/account/dto/AccountError;->values()[Lcom/wandoujia/account/dto/AccountError;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 54
    iget v4, v0, Lcom/wandoujia/account/dto/AccountError;->error:I

    if-ne v4, p0, :cond_0

    .line 58
    :goto_1
    return-object v0

    .line 53
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 58
    :cond_1
    sget-object v0, Lcom/wandoujia/account/dto/AccountError;->COMMON_ERROR:Lcom/wandoujia/account/dto/AccountError;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/account/dto/AccountError;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/wandoujia/account/dto/AccountError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/dto/AccountError;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/account/dto/AccountError;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/wandoujia/account/dto/AccountError;->$VALUES:[Lcom/wandoujia/account/dto/AccountError;

    invoke-virtual {v0}, [Lcom/wandoujia/account/dto/AccountError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/account/dto/AccountError;

    return-object v0
.end method


# virtual methods
.method public final getError()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/wandoujia/account/dto/AccountError;->error:I

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountError;->message:Ljava/lang/String;

    return-object v0
.end method
