.class public Lcom/wandoujia/base/utils/FileNameUtil;
.super Ljava/lang/Object;
.source "FileNameUtil.java"


# static fields
.field private static final EXTENSION_SEPARATOR:C = '.'

.field private static final ILLEGAL_GEGX_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final ILLEGAL_REGX:Ljava/lang/String; = "[`~!@#$%^&*()+=|{}\':;\',\\[\\]\\ <>/?~\uff01@#\uffe5%\u2026\u2026&*\uff08\uff09/\u2014\u2014+|{}\u3010\u3011\u2018\uff1b\uff1a\u201d\u201c\u2019\u3002\uff0c\u3001\uff1f]"

.field private static final LINUX_SEPARATOR:C = '/'


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "[`~!@#$%^&*()+=|{}\':;\',\\[\\]\\ <>/?~\uff01@#\uffe5%\u2026\u2026&*\uff08\uff09/\u2014\u2014+|{}\u3010\u3011\u2018\uff1b\uff1a\u201d\u201c\u2019\u3002\uff0c\u3001\uff1f]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/base/utils/FileNameUtil;->ILLEGAL_GEGX_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-static {p0}, Lcom/wandoujia/base/utils/FileNameUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/FileNameUtil;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 168
    if-nez p0, :cond_0

    .line 169
    const/4 v0, 0x0

    .line 175
    :goto_0
    return-object v0

    .line 171
    :cond_0
    invoke-static {p0}, Lcom/wandoujia/base/utils/FileNameUtil;->indexOfExtension(Ljava/lang/String;)I

    move-result v0

    .line 172
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 173
    const-string v0, ""

    goto :goto_0

    .line 175
    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 128
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 132
    :goto_0
    return-object v0

    .line 131
    :cond_0
    invoke-static {p0}, Lcom/wandoujia/base/utils/FileNameUtil;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v0

    .line 132
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFirstSeparatorPos(Ljava/lang/String;C)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, -0x1

    .line 146
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    goto :goto_0
.end method

.method public static getFullPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 213
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const/4 v0, 0x0

    .line 217
    :goto_0
    return-object v0

    .line 216
    :cond_0
    invoke-static {p0}, Lcom/wandoujia/base/utils/FileNameUtil;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v0

    .line 217
    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static indexOfExtension(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 192
    if-nez p0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v0

    .line 195
    :cond_1
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 196
    invoke-static {p0}, Lcom/wandoujia/base/utils/FileNameUtil;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v2

    .line 197
    if-gt v2, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static indexOfLastSeparator(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 103
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, -0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    goto :goto_0
.end method

.method public static removeExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 79
    if-nez p0, :cond_1

    .line 80
    const/4 p0, 0x0

    .line 86
    :cond_0
    :goto_0
    return-object p0

    .line 82
    :cond_1
    invoke-static {p0}, Lcom/wandoujia/base/utils/FileNameUtil;->indexOfExtension(Ljava/lang/String;)I

    move-result v0

    .line 83
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 86
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeIllegalChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 32
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/wandoujia/base/utils/FileNameUtil;->ILLEGAL_GEGX_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
