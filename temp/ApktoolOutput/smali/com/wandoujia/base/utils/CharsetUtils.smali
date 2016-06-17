.class public final Lcom/wandoujia/base/utils/CharsetUtils;
.super Ljava/lang/Object;
.source "CharsetUtils.java"


# static fields
.field private static final VENDOR_DOCOMO:Ljava/lang/String; = "docomo"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static charsetForVendor(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 1
    .parameter

    .prologue
    .line 137
    invoke-static {}, Lcom/wandoujia/base/utils/CharsetUtils;->getDefaultVendor()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/wandoujia/base/utils/CharsetUtils;->charsetForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public static charsetForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-static {p0, p1}, Lcom/wandoujia/base/utils/CharsetUtils;->nameForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method private static isShiftJis(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 149
    if-nez p0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 152
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 153
    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 157
    :cond_2
    const-string v1, "shift_jis"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "shift-jis"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "sjis"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static nameForDefaultVendor(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 92
    invoke-static {}, Lcom/wandoujia/base/utils/CharsetUtils;->getDefaultVendor()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/wandoujia/base/utils/CharsetUtils;->nameForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static nameForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    const-string v0, "docomo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/wandoujia/base/utils/CharsetUtils;->isShiftJis(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const-string p0, "docomo-shift_jis-2007"

    .line 76
    :cond_0
    return-object p0
.end method
