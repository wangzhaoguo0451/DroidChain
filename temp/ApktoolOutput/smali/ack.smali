.class public final Lack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/android/app/d;


# static fields
.field private static b:Lack;


# instance fields
.field public a:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "9.0.0"

    iput-object v0, p0, Lack;->d:Ljava/lang/String;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lack;->e:Z

    .line 63
    const-string v0, "sdk-and"

    iput-object v0, p0, Lack;->f:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private static A()Ljava/lang/String;
    .locals 3

    .prologue
    .line 406
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 407
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 408
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x2328

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 410
    return-object v0
.end method

.method public static z()Lack;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lack;->b:Lack;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lack;

    invoke-direct {v0}, Lack;-><init>()V

    sput-object v0, Lack;->b:Lack;

    .line 70
    :cond_0
    sget-object v0, Lack;->b:Lack;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    iget-object v0, v0, Lade;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "alipay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    const-string v1, "logs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    return-object v0
.end method

.method public final a(Ladi;)Ljava/lang/String;
    .locals 18
    .parameter

    .prologue
    .line 155
    invoke-static {}, Lade;->a()Lade;

    move-result-object v1

    iget-object v2, v1, Lade;->a:Landroid/content/Context;

    .line 156
    invoke-static {v2}, Ladd;->a(Landroid/content/Context;)Ladd;

    move-result-object v3

    .line 157
    move-object/from16 v0, p0

    iget-object v1, v0, Lack;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, v3, Ladd;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Lack;->d:Ljava/lang/String;

    .line 160
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lack;->d:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lack;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lack;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Msp/"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lack;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-static {}, Ladd;->e()Ljava/lang/String;

    move-result-object v4

    .line 174
    invoke-static {}, Lg;->b()Ljava/lang/String;

    move-result-object v5

    .line 177
    invoke-static {v2}, Lg;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 180
    invoke-static {}, Lg;->c()Ljava/lang/String;

    move-result-object v7

    .line 183
    invoke-static {v2}, Lg;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 186
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lack;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 188
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ("

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 189
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    move-object/from16 v0, p0

    iput-object v1, v0, Lack;->c:Ljava/lang/String;

    .line 193
    :cond_1
    invoke-static {v2}, Ladd;->b(Landroid/content/Context;)Lcom/alipay/wandoujia/id;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/wandoujia/id;->b()Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-static {v2}, Lg;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 199
    invoke-virtual/range {p0 .. p0}, Lack;->g()Ljava/lang/String;

    move-result-object v5

    .line 202
    invoke-virtual {v3}, Ladd;->a()Ljava/lang/String;

    move-result-object v6

    .line 205
    invoke-virtual {v3}, Ladd;->b()Ljava/lang/String;

    move-result-object v7

    .line 207
    invoke-virtual/range {p0 .. p0}, Lack;->x()Ljava/lang/String;

    move-result-object v8

    .line 209
    invoke-virtual/range {p0 .. p0}, Lack;->w()Ljava/lang/String;

    move-result-object v9

    .line 212
    if-eqz p1, :cond_3

    .line 213
    move-object/from16 v0, p1

    iget-object v10, v0, Ladi;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v10, v0, Lack;->g:Ljava/lang/String;

    .line 219
    :goto_1
    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v11, ";"

    const-string v12, " "

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 222
    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v12, ";"

    const-string v13, " "

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 225
    invoke-static {}, Lade;->c()Z

    move-result v12

    .line 227
    iget-object v3, v3, Ladd;->b:Ljava/lang/String;

    .line 229
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lack;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 230
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lack;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 232
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lack;->c:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v16, ";"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 235
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 236
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 237
    move-object/from16 v0, p0

    iget-object v4, v0, Lack;->g:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 238
    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 239
    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 240
    invoke-static {}, Ladf;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 241
    move-object/from16 v0, p0

    iget-object v3, v0, Lack;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 242
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 243
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    if-eqz p1, :cond_2

    .line 246
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 247
    const-string v3, "tid"

    move-object/from16 v0, p1

    iget-object v4, v0, Ladi;->b:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v3, "utdid"

    invoke-static {v2}, Ld;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lack;->a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 251
    const-string v2, ";"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :cond_2
    const-string v1, ")"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 162
    :catch_0
    move-exception v1

    invoke-static {v1}, Ld;->b(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 215
    :cond_3
    invoke-static {}, Ladi;->d()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lack;->g:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 149
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    .line 150
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 432
    invoke-static {p1, p2}, Ld;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 433
    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    iget-object v0, v0, Lade;->a:Landroid/content/Context;

    .line 117
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "trideskey"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 119
    sput-object p1, Lwy;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 84
    const/16 v0, 0x5000

    return v0
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 414
    .line 415
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 414
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 416
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 417
    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 419
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "-1"

    goto :goto_0
.end method

.method public final c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 423
    .line 424
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 423
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 425
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 426
    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 428
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "00"

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lace;->a()Lace;

    move-result-object v0

    invoke-virtual {v0}, Lace;->b()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lack;->e:Z

    if-eqz v0, :cond_0

    .line 95
    iget-boolean v0, p0, Lack;->e:Z

    .line 97
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lwy;->d:Z

    goto :goto_0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 102
    sget v0, Lwy;->f:I

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lwy;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lwy;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lwy;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 134
    sget v0, Lwy;->a:I

    return v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 139
    sget v0, Lwy;->b:I

    return v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 144
    sget v0, Lwy;->c:I

    return v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 285
    sget-boolean v0, Lwy;->e:Z

    return v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    sget-object v0, Lwy;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    sget-object v0, Lwy;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lwy;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 2

    .prologue
    .line 305
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    .line 306
    const-string v1, "msp_memo_user_cancel"

    invoke-static {v1}, Lg;->g(Ljava/lang/String;)I

    move-result v1

    .line 305
    invoke-virtual {v0, v1}, Lade;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 311
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    .line 312
    const-string v1, "msp_memo_server_cancel"

    invoke-static {v1}, Lg;->g(Ljava/lang/String;)I

    move-result v1

    .line 311
    invoke-virtual {v0, v1}, Lade;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 2

    .prologue
    .line 317
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    .line 318
    const-string v1, "msp_memo_app_cancel"

    invoke-static {v1}, Lg;->g(Ljava/lang/String;)I

    move-result v1

    .line 317
    invoke-virtual {v0, v1}, Lade;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 2

    .prologue
    .line 323
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    .line 324
    const-string v1, "msp_memo_repeat_pay"

    invoke-static {v1}, Lg;->g(Ljava/lang/String;)I

    move-result v1

    .line 323
    invoke-virtual {v0, v1}, Lade;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final t()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 329
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    iget-object v0, v0, Lade;->a:Landroid/content/Context;

    .line 330
    const-string v1, "global_settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 332
    const-string v1, "is_sim_imsi"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final u()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 337
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    iget-object v0, v0, Lade;->a:Landroid/content/Context;

    .line 338
    const-string v1, "global_settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 340
    const-string v1, "is_sim_no_imsi"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final v()Lcom/alipay/wandoujia/md;
    .locals 1

    .prologue
    .line 353
    sget-object v0, Lcom/alipay/wandoujia/md;->b:Lcom/alipay/wandoujia/md;

    return-object v0
.end method

.method public final w()Ljava/lang/String;
    .locals 4

    .prologue
    .line 362
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    iget-object v1, v0, Lade;->a:Landroid/content/Context;

    .line 364
    const-string v0, "virtualImeiAndImsi"

    const/4 v2, 0x0

    .line 363
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 365
    const-string v0, "virtual_imei"

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 368
    invoke-static {}, Ladi;->b()Ladi;

    invoke-static {}, Ladi;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    invoke-static {}, Lack;->A()Ljava/lang/String;

    move-result-object v0

    .line 373
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "virtual_imei"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 374
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 376
    :cond_0
    return-object v0

    .line 371
    :cond_1
    invoke-static {v1}, Ladd;->a(Landroid/content/Context;)Ladd;

    move-result-object v0

    invoke-virtual {v0}, Ladd;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final x()Ljava/lang/String;
    .locals 4

    .prologue
    .line 381
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    iget-object v1, v0, Lade;->a:Landroid/content/Context;

    .line 383
    const-string v0, "virtualImeiAndImsi"

    const/4 v2, 0x0

    .line 382
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 384
    const-string v0, "virtual_imsi"

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 387
    invoke-static {}, Ladi;->b()Ladi;

    invoke-static {}, Ladi;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 388
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    .line 389
    iget-object v0, v0, Lade;->a:Landroid/content/Context;

    .line 388
    invoke-static {v0}, Ld;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 390
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 391
    invoke-static {}, Lack;->A()Ljava/lang/String;

    move-result-object v0

    .line 398
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "virtual_imsi"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 399
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 402
    :cond_0
    return-object v0

    .line 393
    :cond_1
    const/4 v1, 0x3

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 396
    :cond_2
    invoke-static {v1}, Ladd;->a(Landroid/content/Context;)Ladd;

    move-result-object v0

    invoke-virtual {v0}, Ladd;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    const-string v0, "msp"

    return-object v0
.end method
