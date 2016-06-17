.class public final Lbwq;
.super Ljava/lang/Object;
.source "CacheControl.java"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:I

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:I

.field public final h:I

.field public final i:Z

.field private final j:I

.field private final k:Z

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/32 v4, 0x7fffffff

    const/4 v2, 0x1

    .line 20
    new-instance v0, Lbwr;

    invoke-direct {v0}, Lbwr;-><init>()V

    iput-boolean v2, v0, Lbwr;->a:Z

    invoke-virtual {v0}, Lbwr;->a()Lbwq;

    .line 28
    new-instance v1, Lbwr;

    invoke-direct {v1}, Lbwr;-><init>()V

    .line 29
    iput-boolean v2, v1, Lbwr;->f:Z

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 30
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const v0, 0x7fffffff

    :goto_0
    iput v0, v1, Lbwr;->d:I

    .line 31
    invoke-virtual {v1}, Lbwr;->a()Lbwq;

    .line 28
    return-void

    .line 30
    :cond_0
    long-to-int v0, v2

    goto :goto_0
.end method

.method private constructor <init>(Lbwr;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iget-boolean v0, p1, Lbwr;->a:Z

    iput-boolean v0, p0, Lbwq;->a:Z

    .line 66
    iget-boolean v0, p1, Lbwr;->b:Z

    iput-boolean v0, p0, Lbwq;->b:Z

    .line 67
    iget v0, p1, Lbwr;->c:I

    iput v0, p0, Lbwq;->c:I

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lbwq;->j:I

    .line 69
    iput-boolean v1, p0, Lbwq;->d:Z

    .line 70
    iput-boolean v1, p0, Lbwq;->e:Z

    .line 71
    iput-boolean v1, p0, Lbwq;->f:Z

    .line 72
    iget v0, p1, Lbwr;->d:I

    iput v0, p0, Lbwq;->g:I

    .line 73
    iget v0, p1, Lbwr;->e:I

    iput v0, p0, Lbwq;->h:I

    .line 74
    iget-boolean v0, p1, Lbwr;->f:Z

    iput-boolean v0, p0, Lbwq;->i:Z

    .line 75
    iput-boolean v1, p0, Lbwq;->k:Z

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Lbwr;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lbwq;-><init>(Lbwr;)V

    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean p1, p0, Lbwq;->a:Z

    .line 51
    iput-boolean p2, p0, Lbwq;->b:Z

    .line 52
    iput p3, p0, Lbwq;->c:I

    .line 53
    iput p4, p0, Lbwq;->j:I

    .line 54
    iput-boolean p5, p0, Lbwq;->d:Z

    .line 55
    iput-boolean p6, p0, Lbwq;->e:Z

    .line 56
    iput-boolean p7, p0, Lbwq;->f:Z

    .line 57
    iput p8, p0, Lbwq;->g:I

    .line 58
    iput p9, p0, Lbwq;->h:I

    .line 59
    iput-boolean p10, p0, Lbwq;->i:Z

    .line 60
    iput-boolean p11, p0, Lbwq;->k:Z

    .line 61
    iput-object p12, p0, Lbwq;->l:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static a(Lbxf;)Lbwq;
    .locals 23
    .parameter

    .prologue
    .line 152
    const/16 v16, 0x0

    .line 153
    const/4 v4, 0x0

    .line 154
    const/4 v5, -0x1

    .line 155
    const/4 v6, -0x1

    .line 156
    const/4 v7, 0x0

    .line 157
    const/4 v8, 0x0

    .line 158
    const/4 v9, 0x0

    .line 159
    const/4 v10, -0x1

    .line 160
    const/4 v11, -0x1

    .line 161
    const/4 v12, 0x0

    .line 162
    const/4 v13, 0x0

    .line 164
    const/4 v15, 0x1

    .line 165
    const/4 v3, 0x0

    .line 167
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lbxf;->a:[Ljava/lang/String;

    array-length v14, v14

    div-int/lit8 v19, v14, 0x2

    move/from16 v18, v2

    move-object v2, v3

    move/from16 v3, v16

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_12

    .line 168
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lbxf;->a(I)Ljava/lang/String;

    move-result-object v16

    .line 169
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lbxf;->b(I)Ljava/lang/String;

    move-result-object v14

    .line 171
    const-string v17, "Cache-Control"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 172
    if-eqz v2, :cond_2

    .line 174
    const/4 v15, 0x0

    .line 185
    :goto_1
    const/16 v16, 0x0

    move/from16 v22, v16

    move/from16 v16, v3

    move/from16 v3, v22

    .line 186
    :cond_0
    :goto_2
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v3, v0, :cond_11

    .line 188
    const-string v17, "=,;"

    move-object/from16 v0, v17

    invoke-static {v14, v3, v0}, Ld;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v17

    .line 189
    move/from16 v0, v17

    invoke-virtual {v14, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 192
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v17

    if-eq v0, v3, :cond_1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v21, 0x2c

    move/from16 v0, v21

    if-eq v3, v0, :cond_1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v21, 0x3b

    move/from16 v0, v21

    if-ne v3, v0, :cond_4

    .line 193
    :cond_1
    add-int/lit8 v17, v17, 0x1

    .line 194
    const/4 v3, 0x0

    move-object/from16 v22, v3

    move/from16 v3, v17

    move-object/from16 v17, v22

    .line 215
    :goto_3
    const-string v21, "no-cache"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 216
    const/16 v16, 0x1

    goto :goto_2

    :cond_2
    move-object v2, v14

    .line 176
    goto :goto_1

    .line 178
    :cond_3
    const-string v17, "Pragma"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_10

    .line 180
    const/4 v15, 0x0

    goto :goto_1

    .line 196
    :cond_4
    add-int/lit8 v3, v17, 0x1

    .line 197
    invoke-static {v14, v3}, Ld;->b(Ljava/lang/String;I)I

    move-result v3

    .line 200
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v3, v0, :cond_5

    invoke-virtual {v14, v3}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v21, 0x22

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 201
    add-int/lit8 v3, v3, 0x1

    .line 203
    const-string v17, "\""

    move-object/from16 v0, v17

    invoke-static {v14, v3, v0}, Ld;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v17

    .line 204
    move/from16 v0, v17

    invoke-virtual {v14, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 205
    add-int/lit8 v17, v17, 0x1

    move-object/from16 v22, v3

    move/from16 v3, v17

    move-object/from16 v17, v22

    .line 208
    goto :goto_3

    .line 210
    :cond_5
    const-string v17, ",;"

    move-object/from16 v0, v17

    invoke-static {v14, v3, v0}, Ld;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v17

    .line 211
    move/from16 v0, v17

    invoke-virtual {v14, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v22, v3

    move/from16 v3, v17

    move-object/from16 v17, v22

    goto :goto_3

    .line 217
    :cond_6
    const-string v21, "no-store"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 218
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 219
    :cond_7
    const-string v21, "max-age"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 220
    const/4 v5, -0x1

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Ld;->c(Ljava/lang/String;I)I

    move-result v5

    goto/16 :goto_2

    .line 221
    :cond_8
    const-string v21, "s-maxage"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 222
    const/4 v6, -0x1

    move-object/from16 v0, v17

    invoke-static {v0, v6}, Ld;->c(Ljava/lang/String;I)I

    move-result v6

    goto/16 :goto_2

    .line 223
    :cond_9
    const-string v21, "private"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 224
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 225
    :cond_a
    const-string v21, "public"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 226
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 227
    :cond_b
    const-string v21, "must-revalidate"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 228
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 229
    :cond_c
    const-string v21, "max-stale"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 230
    const v10, 0x7fffffff

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Ld;->c(Ljava/lang/String;I)I

    move-result v10

    goto/16 :goto_2

    .line 231
    :cond_d
    const-string v21, "min-fresh"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 232
    const/4 v11, -0x1

    move-object/from16 v0, v17

    invoke-static {v0, v11}, Ld;->c(Ljava/lang/String;I)I

    move-result v11

    goto/16 :goto_2

    .line 233
    :cond_e
    const-string v17, "only-if-cached"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 234
    const/4 v12, 0x1

    goto/16 :goto_2

    .line 235
    :cond_f
    const-string v17, "no-transform"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 236
    const/4 v13, 0x1

    goto/16 :goto_2

    :cond_10
    move/from16 v16, v3

    .line 167
    :cond_11
    add-int/lit8 v3, v18, 0x1

    move/from16 v18, v3

    move/from16 v3, v16

    goto/16 :goto_0

    .line 241
    :cond_12
    if-nez v15, :cond_13

    .line 242
    const/4 v14, 0x0

    .line 244
    :goto_4
    new-instance v2, Lbwq;

    invoke-direct/range {v2 .. v14}, Lbwq;-><init>(ZZIIZZZIIZZLjava/lang/String;)V

    return-object v2

    :cond_13
    move-object v14, v2

    goto :goto_4
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 249
    iget-object v0, p0, Lbwq;->l:Ljava/lang/String;

    .line 250
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lbwq;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v1, p0, Lbwq;->b:Z

    if-eqz v1, :cond_2

    const-string v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget v1, p0, Lbwq;->c:I

    if-eq v1, v3, :cond_3

    const-string v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbwq;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget v1, p0, Lbwq;->j:I

    if-eq v1, v3, :cond_4

    const-string v1, "s-maxage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbwq;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-boolean v1, p0, Lbwq;->d:Z

    if-eqz v1, :cond_5

    const-string v1, "private, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-boolean v1, p0, Lbwq;->e:Z

    if-eqz v1, :cond_6

    const-string v1, "public, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-boolean v1, p0, Lbwq;->f:Z

    if-eqz v1, :cond_7

    const-string v1, "must-revalidate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget v1, p0, Lbwq;->g:I

    if-eq v1, v3, :cond_8

    const-string v1, "max-stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbwq;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget v1, p0, Lbwq;->h:I

    if-eq v1, v3, :cond_9

    const-string v1, "min-fresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbwq;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-boolean v1, p0, Lbwq;->i:Z

    if-eqz v1, :cond_a

    const-string v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-boolean v1, p0, Lbwq;->k:Z

    if-eqz v1, :cond_b

    const-string v1, "no-transform, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_c

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lbwq;->l:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
